#!/usr/bin/env python
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

## initialize server
def task_server():
    rospy.init_node('GotoMarker_server') # create server node
    s = rospy.Service('Service_GotoMarker', MoveJoints, handle)
    

def handle(req):
    ## get request parameters 
    getMarker_Ground = False
    position_in_optical = req.goal_6Dposition_Marker
    getMarker_Ground = req.getMarker_Ground
  

    ##############################################################################
    ########################## initialization ##################################
    motionProxy = ALProxy("ALMotion", IP, PORT)
    frame           = motion.FRAME_TORSO
    fractionMaxSpeed = 0.6
    motionProxy.wakeUp()
    postureProxy = ALProxy("ALRobotPosture", IP, PORT)

    ########################## Look for Marker ##################################
    if getMarker_Ground != True:
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
        rospy.Time.now(),"Marker_in_optical" ,"CameraBottom_optical_frame")  
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
        rospy.Time.now(),"Marker_in_CameraBottom_frame" ,"CameraBottom_frame")   
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
        rospy.Time.now(),"Marker_in_torso" ,"torso") 
    # print ("Position of my marker in torso:",  position_in_torso)
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
        rospy.Time.now(),"Marker_in_ROBOT_FRAME" ,"robot") 
    # print ("Position of my marker in ROBOT:",  position_in_ROBOT)
    ######################################
    ######################################


    

    #####################             GO               ######################  
    bMarkerArrived = False

    if getMarker_Ground: #  and (pow(x2,2) + pow(y2,2) < 0.05)
        print("----------------- Go to Marker -----------------")
        ##########################      WALK TO ROSE    ############################
        if pow(x2,2) + pow(y2,2) > 0.1 :
            print("Distance to rose is", math.sqrt( pow(x2,2) + pow(y2,2)))
            motionProxy.closeHand('RHand')
            leftArmEnable  = False
            rightArmEnable  = False
            motionProxy.setWalkArmsEnabled(leftArmEnable, rightArmEnable)
            theta = 0
            motionProxy.moveTo(x2[0], y2[0] , theta) # TODO MODIFY

        print("----------------- Arrive Marker -----------------")
        bMarkerArrived = True

    else:
        print(" No marker ")


    time.sleep(0.1)
    num = 1
    return MoveJointsResponse( 0, 0, bMarkerArrived, ".")


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
    print(radHeadYaw)

    lHeadPitch = motionProxy.getAngles("HeadPitch", False)
    radHeadPitch = lHeadPitch[0]
    # if radHeadPitch >= 0 and radHeadPitch < 0.3:
    #     motionProxy.setAngles("HeadPitch", radHeadPitch + 0.2, 0.3)
    if radHeadPitch >= 0.4:
        motionProxy.setAngles("HeadPitch", radHeadPitch - 0.7, 0.3)
    elif radHeadPitch < -0.3:
        motionProxy.setAngles("HeadPitch", radHeadPitch + 0.8, 0.3)
    elif radHeadPitch >= -0.3 and radHeadPitch < 0.4 :
        motionProxy.setAngles("HeadPitch", radHeadPitch - 0.2, 0.3)
    time.sleep(3.0)

    print(radHeadPitch) 
    
if __name__ == '__main__':
   
    PORT=9559

    task_server()
    rospy.spin()			
		