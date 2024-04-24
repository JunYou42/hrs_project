#!/usr/bin/env python
################################################
# copyright @Jun You #
# # File description #
# initialization to 'standinit'
################################################

import qi
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

getMarker = False
pi = 3.1415926
a = 0
# http://doc.aldebaran.com/1-14/naoqi/motion/control-joint-tuto.html
def posture_diy():

    try:
        motionProxy = ALProxy("ALMotion", robotIP, PORT)
    except Exception,e:
        print "Could not create proxy to ALMotion"
        print "Error was: ",e
        sys.exit(1)


    # Define The Initial Position for the upper body
    HeadYawAngle       = + 0.0
    HeadPitchAngle     = + 0.0

    ShoulderPitchAngle = +80.0
    ShoulderRollAngle  = +20.0
    ElbowYawAngle      = -80.0
    ElbowRollAngle     = -60.0
    WristYawAngle      = + 0.0
    HandAngle          = + 0.0

    # Define legs position
    kneeAngle    = +40.0
    torsoAngle   = + 0.0 # bend the torso
    spreadAngle  = + 0.0 # spread the legs

    # Get the Robot Configuration
    robotConfig = motionProxy.getRobotConfig()
    robotName = ""
    for i in range(len(robotConfig[0])):
        if (robotConfig[0][i] == "Model Type"):
            robotName = robotConfig[1][i]
        print (robotName )

        if robotName == "naoH25":

            Head     = [HeadYawAngle, HeadPitchAngle]

            LeftArm  = [ShoulderPitchAngle, +ShoulderRollAngle, +ElbowYawAngle, +ElbowRollAngle, WristYawAngle, HandAngle]
            RightArm = [ShoulderPitchAngle, -ShoulderRollAngle, -ElbowYawAngle, -ElbowRollAngle, WristYawAngle, HandAngle]

            LeftLeg  = [0.0,                      #hipYawPitch
                        spreadAngle,              #hipRoll
                        -kneeAngle/2-torsoAngle,  #hipPitch
                        kneeAngle,                #kneePitch
                        -kneeAngle/2,             #anklePitch
                        -spreadAngle]             #ankleRoll
            RightLeg = [0.0, -spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2,  spreadAngle]

        elif robotName == "naoH21":

            Head     = [HeadYawAngle, HeadPitchAngle]

            LeftArm  = [ShoulderPitchAngle, +ShoulderRollAngle, +ElbowYawAngle, +ElbowRollAngle]
            RightArm = [ShoulderPitchAngle, -ShoulderRollAngle, -ElbowYawAngle, -ElbowRollAngle]

            LeftLeg  = [0.0,  spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2, -spreadAngle]
            RightLeg = [0.0, -spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2,  spreadAngle]

        elif robotName == "naoT14":

            Head     = [HeadYawAngle, HeadPitchAngle]

            LeftLeg  = [0.0,  spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2, -spreadAngle]
            RightLeg = [0.0, -spreadAngle, -kneeAngle/2-torsoAngle, kneeAngle, -kneeAngle/2,  spreadAngle]

            LeftLeg  = []
            RightLeg = []

        elif robotName == "naoT2":

            Head     = [HeadYawAngle, HeadPitchAngle]

            LeftArm  = []
            RightArm = []

            LeftLeg  = []
            RightLeg = []

        else:
            print "ERROR : Your robot is unknown"
            print "This test is not available for your Robot"
            print "---------------------"
            exit(1)

        # Gather the joints together
        pTargetAngles = Head + LeftArm + LeftLeg + RightLeg + RightArm

        # Convert to radians
        pTargetAngles = [ x * almath.TO_RAD for x in pTargetAngles]

        #------------------------------ send stiffness -----------------------------
        motionProxy.stiffnessInterpolation("Body", 1.0, 0.5)

        #------------------------------ send the commands -----------------------------
        # We use the "Body" name to signify the collection of all joints
        pNames = "Body"
        # We set the fraction of max speed
        pMaxSpeedFraction = 0.2
        # Ask motion to do this with a blocking call
        postureProxy = ALProxy("ALRobotPosture", robotIP, PORT)
        postureProxy.goToPosture("StandInit", 0.3)
        motionProxy.angleInterpolationWithSpeed(pNames, pTargetAngles, pMaxSpeedFraction)
    
def stop_move(IP,PORT):
    motion = ALProxy("ALMotion", IP, PORT)
    tracker = ALProxy("ALTracker", IP, PORT)
    postureProxy = ALProxy("ALRobotPosture", IP, PORT)
    motion.wakeUp()
    postureProxy.goToPosture("StandInit", 0.8)
    motion.stopMove()
    tracker.stopTracker()
    print("preinstalled movements stopped")
    time.sleep(10)

def learn_face(IP,PORT):
   
    face = ALProxy("ALFaceDetection", IP, PORT)
    motion = ALProxy("ALMotion", IP, PORT)
    motion.wakeUp()
    face.clearDatabase()

    postureProxy = ALProxy("ALRobotPosture", IP, PORT)
    postureProxy.goToPosture("StandInit", 0.6)
    motion.setAngles("HeadPitch", -0.5, 0.5)
    time.sleep(3)
    face.learnFace("Jiaxin")
    time.sleep(10)
    a = face.getLearnedFacesList()
    print(a)

if __name__ == '__main__' : 
    IP="10.152.246.134" ## Group E robot
    PORT=9559
    

    parser = argparse.ArgumentParser()
    parser.add_argument("--ip", type=str, default="10.152.246.134",
                        help="Robot IP address. On robot or Local Naoqi: use '10.152.246.134'.")
    parser.add_argument("--port", type=int, default=9559,
                        help="Naoqi port number")

    args = parser.parse_args()
    session = qi.Session()
    try:
        session.connect("tcp://" + args.ip + ":" + str(args.port))
    except RuntimeError:
        print ("Can't connect to Naoqi at ip \"" + args.ip + "\" on port " + str(args.port) +".\n"
               "Please check your script arguments. Run with -h option for help.")
        sys.exit(1)
    
    life_service =session.service("ALAutonomousMoves")
    life_service.setExpressiveListeningEnabled(False)
    tracker_service =session.service("ALTracker")
    tracker_service.stopTracker()
    time.sleep(5)
    stop_move(IP,PORT)
    
    #learn_face(IP,PORT)

		
		