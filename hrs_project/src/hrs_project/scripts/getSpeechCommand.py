#! /usr/bin/env python

import qi
import argparse
import sys
import time
from naoqi import ALProxy
from naoqi import ALBroker
from naoqi import ALModule

import rospy
import almath
import math
from hrs_project.srv import MoveJoints,MoveJointsRequest,MoveJointsResponse
import numpy as np
import motion
import argparse
import tf

from rospy.impl.tcpros_base import DEFAULT_BUFF_SIZE

IP="10.152.246.134"
PORT=9559

getMarker = False
pi = 3.1415926
a = 0

## initialize server
def task_server():
    rospy.init_node('server_SpeechCommand') # create server node
    ## Routine 1 
    s = rospy.Service('Service_SpeechCommand', MoveJoints, handle) # SERVER HANDLER
    

########################################## 
########################################## 
## Service  
def handle(req):
    print (' ----------- Speech recognition Session ----------- ')

    session = qi.Session()
    try:
        session.connect("tcp://" + "10.152.246.134"+ ":" + str(9559))

    except RuntimeError:
        print ("Can't connect to Naoqi at ip \"" + args.ip + "\" on port " + str(args.port) +".\n"
               "Please check your script arguments. Run with -h option for help.")
        sys.exit(1)

    ## get request parameters 
    memoryProxy = ALProxy("ALMemory", IP, PORT)
    tts = ALProxy("ALTextToSpeech", IP, PORT)
    asr_service = session.service("ALSpeechRecognition")
    asr_service.setLanguage("English")

    vocabulary = ["quit", "disco", "robot", "exotic"]
    asr_service.setVocabulary(vocabulary, False)

    # Start the speech recognition engine with user Test_ASR
    asr_service.subscribe("Test_ASR")
    print ('Speech recognition engine started')
    time.sleep(10)
    memValue = "WordRecognized"
    val = memoryProxy.getData(memValue)
    print("now we are going to get data from memory.")
    word1 = val[0]
    print(val)
    asr_service.unsubscribe("Test_ASR")
    
    ##  End
    num = 1
    return MoveJointsResponse( 0, 0, 0, word1)


if __name__ == "__main__":
    PORT=9559
    task_server()
    rospy.spin()			
    

   