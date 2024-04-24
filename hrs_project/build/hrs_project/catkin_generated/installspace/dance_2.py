#!/usr/bin/env python2
################################################
# copyright @Jun You @Jiaxin Yang @Lisa Gan #
# File description #
# This file includes dance routine 2: Robot Dance
#       Client.cpp call service 'Service_dance_routine_2', an already
#       uploaded behavior of dancing is called in this service.
################################################
# REF

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

IP="10.152.246.134"
PORT=9559

BEHAVIOR = 'dance2_robot-ba76af/dance2_0128'
getMarker = False
pi = 3.1415926
a = 0

## initialize server
def task_server():
    rospy.init_node('server_dance_2') # create server node
    ## Routine 1 
    s = rospy.Service('Service_dance_routine_2', MoveJoints, handle) # SERVER HANDLER
    

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

    ## call behavior Dance 2
    print(' START call_dance2.')
    call_dance2()

    ##  End
    print(' START call_dance2.')
    fall_diagnose()
    
    return MoveJointsResponse( 0, 0, 0, ".")


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
########################################## 


########################################## 
########################################## 
## Call behaviour
def call_dance2():
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
            print "Behavior robot dance is launched."
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
    myBroker = ALBroker("myBroker",
       "0.0.0.0",   # listen to anyone
       0,           # find a free port and use it
       IP,         # parent broker IP
       PORT)       # parent broker port
    task_server()
    rospy.spin()		

		