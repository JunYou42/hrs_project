#!/usr/bin/env python
################################################
# copyright @Jun You @Jiaxin Yang @Lisa Gan #
# File description #
# Client.cpp calls service 'Service_GotoMarker':
# NAO get the coordinate from service parameter and transform it into its 
# torse and robor frame. Upon it detects a Marker, it would walk to
# the Marker. 
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
from multiprocessing import Process
from rospy.impl.tcpros_base import DEFAULT_BUFF_SIZE


IP="10.152.246.134"
PORT=9559

pi = 3.1415926
a = 0

## initialize server
def task_server():
    rospy.init_node('handOver_server') # create server node
    s = rospy.Service('Service_handOver', MoveJoints, handle)
    


def handle(req):
    global a 

    ## get request parameters 
    global original_position_RArm
    global original_position_LArm

    ## proxy related initialization
    motionProxy = ALProxy("ALMotion", IP, PORT)
    motionProxy.wakeUp()
    handOver(motionProxy, motion.FRAME_TORSO)
    return MoveJointsResponse( 0, 0, 0, ".")

def handOver(motionProxy, frame):

    ## Hand over
    motionProxy.closeHand('RHand')
    target = [0.1, -0.1, 0.05 , pi+0.5, 0, 0.0]
    motionProxy.setPositions("RArm", 0, target, 0.6, 63)
    time.sleep(2)

    target_1 = [0.25, -0.1, 0.2, pi, -0.6, 0.3]
    motionProxy.positionInterpolations("RArm", frame, target_1, 63, 0.4)
    motionProxy.openHand('RHand') 
    time.sleep(2)
    return MoveJointsResponse( 0, 0, 0, ".")

    
if __name__ == '__main__':

    PORT=9559
    task_server()
    rospy.spin()			
		