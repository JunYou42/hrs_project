#! /usr/bin/env python
# -*- encoding: UTF-8 -*-
################################################
# copyright @Jiaxin Yang @Jun You @Lisa Gan #
# File description #
# TODO
#       Client.cpp call service 'Service_walk2Face'
################################################
# REF
"""Example: Use Tracking Module to Track an Object"""
from __future__ import division
from pkg_resources import UnknownExtra
import qi
import argparse
import sys
import time
from os import walk
import rospy
import time
import almath
import math
import sys
from naoqi import ALProxy
from naoqi import ALBroker
from naoqi import ALModule
from hrs_project.srv import MoveJoints,MoveJointsRequest,MoveJointsResponse
import numpy as np
import motion
import argparse
import tf
from rospy.impl.tcpros_base import DEFAULT_BUFF_SIZE


from naoqi import ALProxy
from PIL import Image
import motion
import cv2
import math
import vision_definitions
import numpy as np
import almath

IP="10.152.246.134"
PORT=9559

def task_server():
    rospy.init_node('server_walk2Face') # create server node
    ## Routine 1 
    s = rospy.Service('Service_walk2Face', MoveJoints, entry) # SERVER HANDLER

def entry(req):
   
    session = qi.Session()
    try:
        session.connect("tcp://" + "10.152.246.134" + ":" + str(9559))
    except RuntimeError:
        print ("Can't connect to Naoqi at ip \"" + args.ip + "\" on port " + str(args.port) +".\n"
               "Please check your script arguments. Run with -h option for help.")
        sys.exit(1)
    motion = ALProxy("ALMotion", IP, PORT)
    posture = ALProxy("ALRobotPosture", IP, PORT)
    faceProxy = ALProxy("ALFaceDetection", IP, PORT)
    memoryProxy = ALProxy("ALMemory", IP, PORT)
    tts = ALProxy("ALTextToSpeech", IP, PORT)
    tracker = ALProxy("ALTracker", IP, PORT) 
    
    ##################################### First, wake up. ####################################################
    motion.wakeUp()
    fractionMaxSpeed = 0.8
    posture.goToPosture("StandInit", fractionMaxSpeed)

    #################################### Walk to the platform ##############################################
    # Here we are asking for full speed forwards
    x     = 0.5 #1
    y     = 0
    theta = 0.0
    motion.moveTo(x, y, theta)
    # Lets make him stop after 1 seconds
    time.sleep(1)

    motion.stopMove()
    #Go to rest position
    posture.goToPosture("StandInit", fractionMaxSpeed)
    time.sleep(1)

    # Subscribe to the ALFaceDetection proxy
    # This means that the module will write in ALMemory with
    # the given period below
    #################################start face detection####################################################
    motion.setAngles("HeadPitch", -0.5, 0.5)
    period = 100
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
            #################start face recognition#####################
            # Second Field = array of face_Info's.
            faceInfoArray = val[1]
            try:
                for j in range( len(faceInfoArray)-1 ):
                    faceInfo = faceInfoArray[j]
                    #faceShapeInfo = faceInfo[0]
                    faceExtraInfo = faceInfo[1]
                    #print(faceExtraInfo[0],faceExtraInfo[1])
                    #############only print jiaxin when jiaxin be detected#######
                    print(faceExtraInfo[2])
                    a = faceExtraInfo[2]
                if (a == "Jiaxin"):
                    tts.say("Hey,Jiaxin. I am going to dance for you.")
                    ######## start face tracker ########
                    tracker.registerTarget("Face", 0.1)
                    tracker.setMode('Move')
                    tracker.track("Face")
                    time.sleep(6)
                    # Stop tracker.
                    tracker.stopTracker()
                    tracker.unregisterAllTargets()
            except Exception, e:
                print(val)
        else:
            print("no face detected.")
    faceProxy.unsubscribe("Test_Face")
    print("Test terminated successfully")

    return MoveJointsResponse( 0, 0, 0, ".")

if __name__ == "__main__":
    IP="10.152.246.134"
    PORT=9559
  
    task_server()
    rospy.spin()			

    
