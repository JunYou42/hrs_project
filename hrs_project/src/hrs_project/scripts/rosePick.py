#!/usr/bin/env python
################################################
# copyright @Jun You @Jiaxin Yang @Lisa Gan #
# File description #
# Client.cpp calls service 'Service_RosePick':
# NAO get the coordinate from service parameter and transform it into its 
# torse and robor frame. Upon it detects a rose Marker, it would walk to
# the Marker. Then look down to let the marker enter its bottom camera's view.
# After it gets a updated position, it  reach out its right arm and grab the rose.
# Then it seeks for a face and hand over the rose.
################################################
# REF
import rospy
import time
import almath
import math
import sys
from naoqi import ALProxy
from hrs_project.srv import MoveJoints,MoveJointsRequest,MoveJointsResponse
import numpy as np
import motion
import argparse
import tf

from rospy.impl.tcpros_base import DEFAULT_BUFF_SIZE

IP="10.152.246.134"
PORT=9559

pi = 3.1415926
a = 0
PORT=9559

## initialize server
def task_server():
    rospy.init_node('RosePick_server') # create server node
    s = rospy.Service('Service_RosePick', MoveJoints, handle)
    


def handle(req):#
    getMarker = False
    RosePick_Ready = False
    global a 

    ## get request parameters 
    global original_position_RArm
    global original_position_LArm
    position_in_optical = req.goal_6Dposition
    getMarker = req.getMarker
    max_speed = 0.5

    ## proxy related initialization
    global motionProxy
    motionProxy = ALProxy("ALMotion", IP, PORT)

    ########################## initialization ##################################
    motionProxy.wakeUp()
    fractionMaxSpeed = 0.8
    ## Go to posture stand
    global postureProxy
    postureProxy = ALProxy("ALRobotPosture", IP, PORT)

    ########################## Look for Marker ##################################
    ## if a rose marker is not detected, adjust the head position.
    if getMarker != True:
        look_for_Marker(motionProxy)
        return MoveJointsResponse( 0, 0, 0, ".")
    postureProxy.goToPosture("StandInit", fractionMaxSpeed)

    ###############################################################################   
    ## POSITION IN OPTICAL FRAME ##
    ######################################
    ######################################  
    my_transformBroadcaster0 = tf.TransformBroadcaster()
    x0 = position_in_optical[0]
    y0 = position_in_optical[1]
    z0 = position_in_optical[2]
    roll0 = 0
    pitch0 = 0 
    yaw0 = 0 
    my_transformBroadcaster0.sendTransform((x0, y0, z0),
        tf.transformations.quaternion_from_euler(roll0 , pitch0 , yaw0), 
        rospy.Time.now(),"rose_in_optical" ,"CameraBottom_optical_frame")  
    ######################################
    ######################################
    
    ###############################################################################
    ## POSITION IN CAMERABOTTOM FRAME ##
    matrix_B2O = np.array([[0,-1,0,0], [0,0,-1,0], [1,0,0,0], [0,0,0,1]])
    homoposition =  np.array([ [position_in_optical[0]], [position_in_optical[1]] ,[position_in_optical[2]], [1] ])
    position_in_bottom = np.linalg.inv(matrix_B2O).dot(homoposition)
    ######################################
    ######################################
    my_transformBroadcaster = tf.TransformBroadcaster()
    x = position_in_bottom[0]
    y = position_in_bottom[1]
    z = position_in_bottom[2]
    roll = 0
    pitch = 0 
    yaw = 0 
    my_transformBroadcaster.sendTransform((x, y, z),
        tf.transformations.quaternion_from_euler(roll , pitch , yaw), 
        rospy.Time.now(),"rose_in_CameraBottom_frame" ,"CameraBottom_frame")   
    ######################################
    ######################################

    ###############################################################################
    ## POSITION IN TORSO FRAME ##
    ## transformation from Bottom to Torso
    frame  = motion.FRAME_TORSO
    useSensorValues  = True
    lMatrix_B2T = motionProxy.getTransform('CameraBottom', frame, useSensorValues)
    aMatrix_B2T = np.array(lMatrix_B2T)
    shape = ( 4, 4 )
    matrix_B2T =   aMatrix_B2T.reshape( shape )
    position_in_torso = matrix_B2T.dot(position_in_bottom)
    ######################################
    ######################################
    my_transformBroadcaster1 = tf.TransformBroadcaster()
    x1 = position_in_torso[0]
    y1 = position_in_torso[1]
    z1 = position_in_torso[2]
    roll1 = 0
    pitch1 = 0 
    yaw1 = 0 
    my_transformBroadcaster1.sendTransform((x1, y1, z1),
        tf.transformations.quaternion_from_euler(roll1 , pitch1 , yaw1), 
        rospy.Time.now(),"rose_in_torso" ,"torso") 
    ######################################
    ######################################

    ###############################################################################
    ## POSITION IN ROBOT FRAME ##
    ## transformation from Bottom to Torso
    frame  = motion.FRAME_ROBOT
    useSensorValues  = True
    lMatrix_B2R = motionProxy.getTransform('CameraBottom', frame, useSensorValues)
    aMatrix_B2R = np.array(lMatrix_B2R)
    shape = ( 4, 4 )
    matrix_B2R =   aMatrix_B2T.reshape( shape )
    position_in_ROBOT = matrix_B2R.dot(position_in_bottom)
    ######################################
    ######################################
    my_transformBroadcaster1 = tf.TransformBroadcaster()
    x2 = position_in_ROBOT[0]
    y2 = position_in_ROBOT[1]
    z2 = position_in_ROBOT[2]
    roll1 = 0
    pitch1 = 0 
    yaw1 = 0 
    my_transformBroadcaster1.sendTransform((x2, y2, z2),
        tf.transformations.quaternion_from_euler(roll1 , pitch1 , yaw1), 
        rospy.Time.now(),"rose_in_ROBOT_FRAME" ,"robot") 
    ######################################
    ######################################


    ###############################################################################
    ## get original position of RArm.
    joint_name1 = "RArm"
    joint_name2 = "LArm"
    frame           = motion.FRAME_TORSO
    useSensorValues = True
    position_RArm         = motionProxy.getPosition(joint_name1, frame, useSensorValues)
    position_LArm         = motionProxy.getPosition(joint_name2, frame, useSensorValues)

    if a == 0:
       original_position_RArm =  position_RArm
       original_position_LArm =  position_LArm
       print (" original_position", joint_name1, " in Torso is:", original_position_RArm)
       print (" original_position", joint_name2, " in Torso is:", original_position_LArm)


    #####################             GRAB               ######################  
    if getMarker: 
        ##########################      WALK TO ROSE    ############################
        if pow(x2,2) + pow(y2,2) > 0.03 :
            print("Distance to rose is", math.sqrt( pow(x2,2) + pow(y2,2)))
            # http://doc.aldebaran.com/1-14/naoqi/motion/control-walk-api.html#ALMotionProxy::moveTo__floatCR.floatCR.floatCR
            theta = 0
            motionProxy.moveTo(x2[0] + 0.1, y2[0] + 0.1, theta) # MODIFY
            print("Walking to ", x2[0], "," , y2[0] )


        print("----------------- Start grabing -----------------")
        print("Space distance to rose is", math.sqrt( pow(x2,2) + pow(y2,2) + pow(z2,2)))
        frame           = motion.FRAME_TORSO
        
        ######################################
        ## Prepare for grabing, look down
        print(" Preparing for grab.")
        motionProxy.setAngles("HeadPitch", 0.2, fractionMaxSpeed)
        time.sleep(3)

        ######################################
        ######################################
        ## Update marker position
        ## POSITION IN OPTICAL FRAME ##
        position_in_optical = req.goal_6Dposition
        ## POSITION IN CAMERABOTTOM FRAME ##
        matrix_B2O = np.array([[0,-1,0,0], [0,0,-1,0], [1,0,0,0], [0,0,0,1]])
        homoposition =  np.array([ [position_in_optical[0]], [position_in_optical[1]] ,[position_in_optical[2]], [1] ])
        position_in_bottom = np.linalg.inv(matrix_B2O).dot(homoposition)
        ## POSITION IN TORSO FRAME ##
        frame  = motion.FRAME_TORSO
        useSensorValues  = True
        lMatrix_B2T = motionProxy.getTransform('CameraBottom', frame, useSensorValues)
        aMatrix_B2T = np.array(lMatrix_B2T)
        shape = ( 4, 4 )
        matrix_B2T =   aMatrix_B2T.reshape( shape )
        position_in_torso = matrix_B2T.dot(position_in_bottom)
        print ("I see marker in torso frame :",  position_in_torso)

        ######################################
        ######################################
        ## Pick
        pick_right(motionProxy, position_in_torso, max_speed, frame)
        print(" Ready for sending rose. ")
        print("----------------- Finish grabing -----------------")
        time.sleep(3)

        ######################################
        ## Walk to people
        face_track()      

        ######################################
        ## session done, finish subscribing the service
        print("----------------- Finish One Rose Delivery -----------------")
        RosePick_Ready = True
    else:
        motionProxy.setPositions("RArm",frame, original_position_RArm, max_speed, 7)     
        print(" No marker ")


    time.sleep(0.1)
    num = 1
    a +=1
    return MoveJointsResponse( 0, RosePick_Ready, 0, ".")
    
########################################## 
########################################## 
## Pick with right hand
def pick_right(motionProxy, position_in_torso, max_speed, frame):
    motionProxy.openHand('RHand')
    end_effector = 'RArm'
    
    ## Arm initialization
    target = [0.2,-0.15,0.1, 0.80 , 0.0, 0.0]
    motionProxy.setPositions("RArm", 0, target, 0.6, 63)
    time.sleep(2)

    motionProxy.openHand('RHand')
    time.sleep(2)

    ## Arm move to rose
    position_right = 0.16, 0, 0.07
    position_right = position_right + (1.6,0.07,0.89)
    motionProxy.setPositions(end_effector,frame, position_right, max_speed, 7)  
    time.sleep(5)
    
    ## grab 
    motionProxy.setAngles("RWristYaw",  pi/2, 0.6)
    motionProxy.closeHand('RHand')
    time.sleep(1)

    ## pick up
    position_right = 0.1, 0.1, 0.3
    position_right = position_right + (0,0,0)
    motionProxy.setPositions(end_effector,frame, position_right, max_speed, 7)  
    time.sleep(4)

    position_right = 0.18, -0.17, 0.07
    position_right = position_right + (1.66,-0.14, -0.2)
    motionProxy.setPositions(end_effector,frame, position_right, max_speed, 7)  
    time.sleep(4)

    

########################################## 
########################################## 
## Pick with right hand with torso bending down
    #################################start face detection####################################################
def face_track():
    # motionProxy = ALProxy("ALMotion", IP, PORT)
    motionProxy.setAngles("HeadPitch", -0.5, 0.5)
    period = 100
    faceProxy = ALProxy("ALFaceDetection", IP, PORT)
    memoryProxy = ALProxy("ALMemory", IP, PORT)
    faceProxy.subscribe("Test_Face", period, 0.0)
    # ALMemory variable where the ALFacedetection modules
    # outputs its results
    memValue = "FaceDetected"
    for i in range(0, 20):
        time.sleep(0.5)
        val = memoryProxy.getData(memValue)
        print("now we are going to get data from memory.")
        # Check whether we got a valid output.
        if(val and isinstance(val, list) and len(val) >= 2):
            # We detected faces !
            # For each face, we can read its shape info and ID.
            # First Field = TimeStamp.
            timeStamp = val[0]
            ################# start face recognition #####################
            print(val)
            direction_x = val[2][0]
            direction_y = val[2][1]
            rightArmEnable  = False
            motionProxy.setWalkArmsEnabled(False, rightArmEnable)
            motionProxy.moveTo(direction_x, direction_y, math.atan(direction_y/direction_x))
            time.sleep(5)
            break
        else:
            print("no face detected.")
    faceProxy.unsubscribe("Test_Face")
    print("face_track successfully")



########################################## 
########################################## 
## handover
def handover(motionProxy, position_in_torso, max_speed, frame):
    motionProxy.openHand('RHand')
    end_effector = 'RArm'

    ## Hand over
    target = [0.1, -0.1, 0.05 , pi+0.5, 0, 0.0]
    motionProxy.setPositions("RArm", 0, target, 0.6, 63)
    # motionProxy.setAngles("RWristYaw",  pi/2, 0.6)
    time.sleep(2)
    target_1 = [0.25, -0.1, 0.2, pi, -0.6, 0.3]
    motionProxy.positionInterpolations("RArm", frame, target_1, 63, 0.4)
    time.sleep(2)
    motionProxy.openHand('RHand')
    time.sleep(5)

########################################## 
########################################## 
## turning head to find Marker 
def look_for_Marker(motionProxy):
    lHeadYaw = motionProxy.getAngles("HeadYaw", False)
    radHeadYaw = lHeadYaw[0]
    if radHeadYaw >= 0 and radHeadYaw < 0.5:
        motionProxy.setAngles("HeadYaw", radHeadYaw + 0.5, 0.3)
    elif radHeadYaw >= 0.5:
        motionProxy.setAngles("HeadYaw", radHeadYaw - 0.8, 0.3)
    elif radHeadYaw <= -0.5:
        motionProxy.setAngles("HeadYaw", radHeadYaw + 0.8, 0.3)
    elif radHeadYaw > -0.5 and radHeadYaw < 0 :
        motionProxy.setAngles("HeadYaw", radHeadYaw - 0.5, 0.3)
    time.sleep(3.0)

    lHeadPitch = motionProxy.getAngles("HeadPitch", False)
    radHeadPitch = lHeadPitch[0]
    if radHeadPitch >= 0.4:
        motionProxy.setAngles("HeadPitch", radHeadPitch - 0.7, 0.3)
    elif radHeadPitch < -0.3:
        motionProxy.setAngles("HeadPitch", radHeadPitch + 0.8, 0.3)
    elif radHeadPitch >= -0.3 and radHeadPitch < 0.4 :
        motionProxy.setAngles("HeadPitch", radHeadPitch - 0.2, 0.3)
    time.sleep(3.0)


##   ''' Launch and stop a behavior, if possible. '''
def launchAndStopBehavior(managerProxy, behaviorName):

    # Check that the behavior exists.
    if (managerProxy.isBehaviorInstalled(behaviorName)):
        # Check that it is not already running.
        if (not managerProxy.isBehaviorRunning(behaviorName)):
            # Launch behavior. This is a blocking call, use post if you do not
            # want to wait for the behavior to finish.
            managerProxy.runBehavior(behaviorName)
            print "Running behaviors: get_ready"
            time.sleep(0.5)
        else:
            print "Behavior is already running."
    else:
        print "Behavior not found."
        return


    
if __name__ == '__main__':
    
    PORT=9559
    task_server()
    rospy.spin()		

    