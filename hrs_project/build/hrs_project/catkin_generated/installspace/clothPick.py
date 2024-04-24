#!/usr/bin/env python2
# -*- encoding: UTF-8 -*-

from __future__ import division
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
from pkg_resources import UnknownExtra
import qi
import argparse
import sys
from os import walk
from naoqi import ALBroker
from naoqi import ALModule
from rospy.impl.tcpros_base import DEFAULT_BUFF_SIZE
from PIL import Image
import cv2
import vision_definitions

IP="10.152.246.134" ## Group B robot
PORT=9559
pi = 3.1415926
a = 0


BEHAVIOR_preGrab = 'pre_grab-6fa9fd/get_ready_0129'
BEHAVIOR_postGrab = 'after_grab-b67448/get_up_0129'


## initialize server
def task_server():
    rospy.init_node('ClothPick_server') # create server node
    s = rospy.Service('Service_ClothPick', MoveJoints, handle)

def search():
    motionProxy = ALProxy("ALMotion", IP, PORT)
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

    getImage(IP, PORT, 0)    # top camera
    img = cv2.imread("/home/nao_a/Pictures/camImage.png")
    #################################Binary the img (red/yellow) ####################################
    af = Binarization(img, "red")
    ##################################calculate the location of the object#############################
    x, y = calcTheLocate(af)
    print("final locate : ", x, y)

    if (x == 0 and y == 0):
        flag = search()
    else:
        flag = True
    return flag
    
## Main Function
def handle(req):#
    num = 0

    ## Get parameters from service
    cloth_color = req.cloth_color

    ## Proxy initialization
    IP="10.152.246.134" 
    PORT=9559
    global posture
    posture = ALProxy("ALRobotPosture", IP, PORT)
    global motionProxy
    motionProxy = ALProxy("ALMotion", IP, PORT)

    ###########################First, wake up and prepare for the following action.###################
    motionProxy.wakeUp()
    posture.goToPosture("StandInit", 0.8)
    setHeadAngle(0, 0.25)
    motionProxy.setStiffnesses("Head", 0.0)
    ############################# Use top camera to get the images #####################################
    #getImage(IP, PORT, 1)    # bottom camera
    getImage(IP, PORT, 0)    # top camera
    img = cv2.imread("/home/nao_a/Pictures/camImage.png")
    #################################Binary the img (red/yellow) ####################################
    af = Binarization(img, "red")
    ##################################calculate the location of the object#############################
    x, y = calcTheLocate(af)
    print("final locate : ", x, y)

    ############################### whehter get the position###########################################
    flag = None
    if (x == 0 and y == 0):
        flag = False
    else:
        flag = True
    while(flag == False):
        flag = search()
        if (flag == False):
            flag = search()
        else:
            flag = True
            break
    x, y, theta = getDistanse(x, y, 0)
    print("walk to:", x, y, theta)
    # print("walk 1:",x,y-y*math.tan(math.radians(25)),theta)
    motionProxy.walkTo(x-0.130, y, theta)

    ########################## Grabbing ##################################

    print("----------------- Start grabing -----------------")
   
    call_behavior_PreGrab()
    print "call_behavior_PreGrab finished"

    pick_right_cloth(0.8)

    call_behavior_AfterGrab()
    print "call_behavior_AfterGrab finished"

    motionProxy.closeHand('RHand')
    target = [0.16,-0.04, 0.05, 2.7 , -0.11, 0.72]
    motionProxy.setPositions("RArm", 0, target, 0.6, 63)
    time.sleep(3)

    print("----------------- Finish grabing -----------------")
   
    #####################  Exit the stage with cloth  ####################
    rightArmEnable  = False
    motionProxy.setWalkArmsEnabled(False, rightArmEnable)
    motionProxy.moveTo(0.3, 0.3, pi/2)

    time.sleep(0.1)
    num = 1
    return MoveJointsResponse( num, 1, 0 , ".")
  


########################################## 
########################################## 
## Pick with right hand
def pick_right_cloth( max_speed ):
    frame  = motion.FRAME_TORSO

    motionProxy = ALProxy("ALMotion", robotIP, PORT)
    motionProxy.wakeUp()
    motionProxy.openHand('RHand')
    end_effector = 'RArm'
    


    ## Arm initialization
    target = [0.1,-0.15, 0.2, 1 , 0.5, 1]
    motionProxy.setPositions("RArm", 0, target, 0.6, 63)
    time.sleep(2)
    motionProxy.openHand('RHand')
    time.sleep(1)

    ## Arm move to marker
    position_right = 0.18, 0, 0.08
    position_right = position_right + (0.45, 0.8 ,0.75)
    motionProxy.setPositions(end_effector,frame, position_right, max_speed, 7)  
    time.sleep(1)
    
    ## Pick up 
    motionProxy.closeHand('RHand')
    time.sleep(1)
    
    target = [0.17,-0.08, 0.2, 0.43 , 0.5, 0.46]
    motionProxy.setPositions("RArm", 0, target, 0.6, 63)
    time.sleep(5)
    


########################################## 
########################################## 
## Call behaviour
def call_behavior_PreGrab():
    ## initialization
    postureProxy = ALProxy("ALRobotPosture", robotIP, PORT)
    postureProxy.goToPosture("StandInit", 0.7)

    ## Define behaviour to call
    behaviorName =  BEHAVIOR_preGrab
    managerProxy_1 = ALProxy("ALBehaviorManager", robotIP, 9559)

    ## call behaviour
    launchAndStopBehavior(managerProxy_1, behaviorName)

def call_behavior_AfterGrab():
    ## initialization
  
    behaviorName =  BEHAVIOR_postGrab
    managerProxy_2 = ALProxy("ALBehaviorManager", robotIP, 9559)

    launchAndStopBehavior(managerProxy_2, behaviorName)




##   ''' Launch and stop a behavior, if possible. '''
def launchAndStopBehavior(managerProxy, behaviorName):

    # Check that the behavior exists.
    if (managerProxy.isBehaviorInstalled(behaviorName)):
        while (managerProxy.isBehaviorRunning(behaviorName)):
            time.sleep(2)
            print "Waiting " + behaviorName + " get_ready"
        managerProxy.runBehavior(behaviorName)
        print behaviorName + " behaviors: starts"
    else:
        print "Behavior not found."
        return


        

def getImage(IP, PORT, cameraID):
    camProxy = ALProxy("ALVideoDevice", IP, PORT)

    if (cameraID == 0):  # Bottom Camera
        camProxy.setCameraParameter("test", 18, 0)
    elif (cameraID == 1):  # Top Camera
        camProxy.setCameraParameter("test", 18, 1)

    resolution = vision_definitions.kVGA  # 
    colorSpace = vision_definitions.kRGBColorSpace  #  
    fps = 15

    nameId = camProxy.subscribe("test", resolution, colorSpace, fps)  #  
    naoImage = camProxy.getImageRemote(nameId)  #  

    imageWidth = naoImage[0]
    imageHeight = naoImage[1]

    array = naoImage[6]
    im = Image.frombytes("RGB", (imageWidth, imageHeight), array)


    ##### modify ######
    im.save("/home/nao_a/Pictures/camImage.png", "PNG")  #  
    camProxy.unsubscribe(nameId)
    
def Binarization(image, pattern="yellow"):
    """
    Binarization() This method uses the HSV color field for binarization image processing
    :param image: the image object to be passed in
    :param pattern: the color to be recognized, default is yellow
    :return:
    """
    # Setting the pattern
    lower = []
    upper = []
    if (pattern == "red"):
        lower = np.array([0, 120, 120])
        upper = np.array([10, 255, 255])
    elif (pattern == "yellow"):
        lower = np.array([20, 100, 100])
        upper = np.array([34, 255, 255])
    elif (pattern == "blue"):
        lower = np.array([110, 70, 70])
        upper = np.array([124, 255, 255])
    # BGR to HSV
    hsv = cv2.cvtColor(image, cv2.COLOR_BGR2HSV)
    # Binarization
    mask = cv2.inRange(hsv, lower, upper)

    # Opened the image
    kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (5, 5)) #
    opened = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel) #

    cv2.imshow("Binarization", opened)
    return opened
def calcTheLocate(img):
    """
   Calculate the relative coordinates of the center of the target in the image
   :param img: the image object of the transfer
    :return:
    """
    col = np.ones(640)  
    row = np.ones(480)   
    colsum = []  
    rowsum = []  
    x = 0
    xw = 0 # w:west
    xe = 0 # e:est
    y = 0
    yn = 0 #n:north
    ys = 0 #s:south
    for i in range(0, 480):  
        product = np.dot(col, img[i][:])  
        colsum.append(product)
    for i in range(0, 480):  
        if (colsum[i] == max(colsum)):
            y = i
            val = max(colsum) / 255
            yn = i - val
            ys = i + val
            break
    for i in range(0, 640):
        product = np.dot(row, img[:, i])
        rowsum.append(product)
    for i in range(0, 640):
        if (rowsum[i] == max(rowsum)):
            x = i
            val = max(colsum) / 255
            xw = val - i
            xe = val + i
            break
    print("locate  x: ", x, xw, xe, "........ locate y :", y, yn, ys)

    
    return x, y

def getDistanse(x, y, cameraID):
    
    x = x - 320
    y = y - 240
    alpha = ((-x / 640) * 60.97) * math.pi / 180  # rads
    beta = ((y / 480) * 47.64) * math.pi / 180  # rads
    headAngle = getHeadAngle(IP, PORT)
    beta = beta + headAngle[1]

    print("alpha", alpha, "beta", beta)
    print("alpha", alpha / math.pi * 180, "beta", beta / math.pi * 180)

    setHeadAngle(alpha, beta)
    motionProxy.setStiffnesses("Head", 0.0)
    #  camera height
    H = 495
    cameraAngle = 1.2 * math.pi / 180
    if cameraID == 0:
        H = 495
        cameraAngle = 1.2 * math.pi / 180
    elif cameraID == 1:
        H = 477.33
        cameraAngle = 39.7 * math.pi / 180

    h = H - 210 - 105 / 2  ################## the height and the diam
    headPitchAngle = getHeadPitchAngle(IP, PORT)
    s = h / math.tan(cameraAngle + headPitchAngle[0])
    x = s * math.cos(alpha) / 1000
    y = s * math.sin(alpha) / 1000

    return x, y, alpha

def getDistanceBottom(x, y):

    
    x = x - 320
    y = y - 240
    alpha = ((-x / 640) * 60.97) * math.pi / 180  # rads
    beta = ((y / 480) * 47.64) * math.pi / 180  # rads
    headAngle = getHeadAngle(IP, PORT)
    
    alpha = alpha + headAngle[0]
    beta = beta + headAngle[1]
    setHeadAngle(alpha, beta)
    motionProxy.setStiffnesses("Head", 0.0)

    print("Use bottom camera : ")
    print("alpha", alpha, "beta", beta)
    print("alpha", alpha / math.pi * 180, "beta", beta / math.pi * 180)

    H = 477.33  # Not sure
    cameraAngle = 39.7 * math.pi / 180
    h = H - 210 - 105 / 2
    s = h / math.tan(cameraAngle + beta)
    x = s * math.cos(alpha) / 1000
    y = s * math.sin(alpha) / 1000
    z = 210 + 105 / 2
    return x, y, z
def getHeadAngle(IP, PORT):
    
    actuator = ["HeadYaw", "HeadPitch"]
    useSensor = False
    headAngle = motionProxy.getAngles(actuator, useSensor)

    return headAngle
def getHeadPitchAngle(IP, PORT):
   
    actuator = "HeadPitch"
    useSensor = False
    headAngle = motionProxy.getAngles(actuator, useSensor)

    return headAngle
def setHeadAngle(alpha, beta):
    motionProxy = ALProxy("ALMotion", IP, PORT)
    motionProxy.setStiffnesses("Head", 1.0)
    maxSpeedFraction = 0.3
    names = ["HeadYaw", "HeadPitch"]
    angles = [alpha, beta]
    motionProxy.angleInterpolationWithSpeed(names, angles, maxSpeedFraction)

    motionProxy.setStiffnesses("Head", 0.0)

    
if __name__ == '__main__':
   
    robotIP="10.152.246.134" 


    PORT=9559
    task_server()

    rospy.spin()			
		