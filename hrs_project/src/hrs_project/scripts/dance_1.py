#!/usr/bin/env python
################################################
# copyright @Jun You @Jiaxin Yang @Lisa Gan #
# File description #
# This file includes dance routine 1: Disco Dance
#       Client.cpp call service 'Service_dance_routine_1', an already
#       uploaded behavior of dancing is called in this service.
################################################
# REF
# 1231 
# Choregraphie
# https://funlab.nd.edu/the-nao-base/special-movements/
# 0120
# https://www.softbankrobotics.com/emea/en/support/nao-6/downloads-softwares/former-versions?os=49&category=39
# https://fileadmin.cs.lth.se/robot/nao/doc/getting_started/installing.html
# http://doc.aldebaran.com/2-8/software/choregraphe/installing.html


import qi
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
import functools
import io
import struct
import threading
import pickle

from rospy.impl.tcpros_base import DEFAULT_BUFF_SIZE


BEHAVIOR = 'dance1_disco-1f9c06/dance1_0128'

getMarker = False
pi = 3.1415926
a = 0

IP="10.152.246.134"
PORT=9559


## initialize server
def task_server():
    rospy.init_node('server_dance_1') # create server node
    ## Routine 1 
    s = rospy.Service('Service_dance_routine_1', MoveJoints, handle) # SERVER HANDLER
    

########################################## 
########################################## 
## Service  
def handle(req):
    ##  proxy and posture Initilization
    motionProxy = ALProxy("ALMotion", IP, PORT)
    postureProxy = ALProxy("ALRobotPosture", IP, PORT)

    motionProxy.wakeUp()
    fallManagerActivation()

    postureProxy.goToPosture("StandInit", 0.5)

    ## call behavior Dance 1 
    print(' START call_dance1.')
    call_dance1()

    ##  End
    print(' START fall_diagnose.')
    fall_diagnose()
    
    return MoveJointsResponse( 0, 0, 0, ".")

########################################## 
########################################## 
## turn_left
def turn_left():
    ##  Initilizastion
    motionProxy = ALProxy("ALMotion", IP, PORT)
    postureProxy = ALProxy("ALRobotPosture", IP, PORT)
    motionProxy.wakeUp()
    postureProxy.goToPosture("StandInit", 0.5)

    ## turn left
    # The units for this command are meters and radians
    x  = 0.2
    y  = 0.2
    theta  = math.pi/2
    motionProxy.moveTo(x, y, theta)


########################################## 
########################################## 
## FALL DETECTION
class myModule():
# class myModule(ALModule):
    """python class myModule test auto documentation : comment needed to create a new python module"""
    
    def recover():
        ##  Initilizastion
        motionProxy = ALProxy("ALMotion", IP, PORT)
        postureProxy = ALProxy("ALRobotPosture", IP, PORT)
        motionProxy.wakeUp()
        postureProxy.goToPosture("StandInit", 0.5)

def fall_diagnose():
    pythonModule = myModule()
    memoryProxy = ALProxy("ALMemory")
    memoryProxy.subscribeToEvent("robotHasFallen","pythonModule", "recover") #  event is case sensitive !
    time.sleep(5)
########################################## 



########################################## 
########################################## 
## Fall management 
def fallManagerActivation():
    ## initialization
    motionProxy = ALProxy("ALMotion", IP, PORT)
    motionProxy.wakeUp()

    ## get and print fall manager reflex information
    iFallReflexOn = motionProxy.getFallManagerEnabled()
    if iFallReflexOn == False:
        print('The Fall Manager reflex is disable on this robot.')
        motionProxy.setFallManagerEnabled(True)
    else: 
        print('The Fall Manager reflex is activated on this robot.')



def call_dance1():
    ## initialization
    motionProxy = ALProxy("ALMotion", IP, PORT)
    motionProxy.wakeUp()
    behaviorName = BEHAVIOR
    managerProxy = ALProxy("ALBehaviorManager", IP, 9559)
    launchAndStopBehavior(managerProxy, behaviorName)


##   ''' Launch and stop a behavior, if possible. '''
def launchAndStopBehavior(managerProxy, behaviorName):
    # Check that the behavior exists.
    if (managerProxy.isBehaviorInstalled(behaviorName)):
        # Check that it is not already running.
        if (not managerProxy.isBehaviorRunning(behaviorName)):
                # Launch behavior. This is a blocking call, use post if you do not
                # want to wait for the behavior to finish.
                # managerProxy.post.runBehavior(behaviorName)
            managerProxy.runBehavior(behaviorName)
            print "Behavior disco dance is launched."

            time.sleep(0.5)
        else:
            print "Behavior is already running."
    else:
        print "Behavior not found."
        return


########################################## 
########################################## 
if __name__ == '__main__':
   
    PORT=9559
    ## call service
    myBroker = ALBroker("myBroker",
       "0.0.0.0",   # listen to anyone
       0,           # find a free port and use it
       IP,         # parent broker IP
       PORT)       # parent broker port
    task_server()
    rospy.spin()		




		