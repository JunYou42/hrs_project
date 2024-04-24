/////////////////////////////////////////////////////
/////////////    INSTRUCTION LOOK-UP    /////////////
/////////////////////////////////////////////////////
// DANCE ROUTINE
// disco: Dance routine disco
// robot: Dance routine robot
// exotic: Dance routine exotic
// quit: quit the dance part


#include <iostream>
#include <fstream>
#include <iomanip>
#include <stdlib.h>
#include <ros/ros.h>
#include <sensor_msgs/image_encodings.h>
#include <image_transport/image_transport.h>//Using image_transport for publishing and subscribing to images in ROS allows you to subscribe to compressed image streams
#include "message_filters/subscriber.h"
#include "sensor_msgs/JointState.h"
#include <string.h>
#include <cmath>
#include <tf/transform_broadcaster.h>
//  OPENCV
#include <cv_bridge/cv_bridge.h>
#include <opencv2/highgui/highgui.hpp>//OpenCV's image processing and GUI modules.
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core.hpp>
#include <opencv2/opencv.hpp>
//  NAO APP
#include <naoqi_bridge_msgs/JointAnglesWithSpeed.h>
#include <naoqi_bridge_msgs/Bumper.h>
#include <naoqi_bridge_msgs/HeadTouch.h>
#include <naoqi_bridge_msgs/HandTouch.h>
#include <naoqi_bridge_msgs/JointAnglesWithSpeedAction.h>
#include <std_srvs/Empty.h>
#include <boost/algorithm/string.hpp>
#include <boost/date_time.hpp>
#include <naoqi_bridge_msgs/SpeechWithFeedbackActionGoal.h>
#include <actionlib_msgs/GoalStatusArray.h>
#include <naoqi_bridge_msgs/BlinkActionGoal.h>
#include <naoqi_bridge_msgs/SetSpeechVocabularyActionGoal.h>
#include <std_msgs/ColorRGBA.h>
#include <naoqi_bridge_msgs/WordRecognized.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Pose2D.h>
#include <std_msgs/Bool.h>
#include "actionlib/client/simple_action_client.h"
// #include <aruco/aruco.h>
// #include <aruco/cvdrawingutils.h>
#include <opencv2/aruco.hpp>
#include <opencv2/aruco/dictionary.hpp>

// REAEVANT FILE PARAMETERS
#include <hrs_project/BlinkAction.h>
#include <hrs_project/SetSpeechVocabularyAction.h>
#include <hrs_project/SpeechWithFeedbackAction.h>
#include "hrs_project/MoveJoints.h"


using namespace std;
using namespace cv;



#define robotIP "10.152.246.134" // GROUP B

#define PORT 9559 
#define pi 3.1415926

hrs_project::MoveJoints srv;
bool camera_on = true;

bool RoseSession = false; // start session
bool ClothSession = false;
bool bMarkerLocation = false; // start marker detection for location


 

//////////////// 

bool stop_thread=false;

void spinThread()
{
  while(!stop_thread)
  {
    ros::spinOnce();
  }
}

////////////////////////////////////////////////////////////////////////////////////

class Nao_control
{
protected:

    // ROS node handler
    ros::NodeHandle nh_;
    /////////////////////////////////////////////////////// BUMPER
    // Subscriber to bumpers states
    ros::Subscriber bumper_sub;
    /////////////////////////////////////////////////////// HEAD TACTILE
    // Subscriber to head tactile states
    ros::Subscriber tactile_sub;
    /////////////////////////////////////////////////////// SPEECH 
    // Publisher for nao speech
    ros::Publisher speech_pub;
    // Publisher for nao vocabulary parameters
    ros::Publisher voc_params_pub;
    // Client for starting speech recognition
    ros::ServiceClient recog_start_srv;
    // Client for stoping speech recognition
    ros::ServiceClient recog_stop_srv;
    // Subscriber to speech recognition
    ros::Subscriber recog_sub;
    /////////////////////////////////////////////////////// WALK 
    // Publisher to nao walking
    ros::Publisher walk_pub;
    ros::ServiceClient stopWalk_srv;
    // Subscriber for foot contact
    ros::Subscriber footContact_sub;

    std_srvs::Empty srv_empty;
    vector<string> recog_words;
    hrs_project::SpeechWithFeedbackGoal speechGoal;


    //////////////// SELF defined /////////////////
    string sentence;
  
    //////////////// SELF defined /////////////////

public:
    ///////////////////////////////// Initialization START /////////////////////////////////
    // subscriber to joint states
    ros::Subscriber sensor_data_sub;
    Mat src_bottom;
    Mat src_top;
    image_transport::ImageTransport it_;
    image_transport::Subscriber image_sub_bottom;
    image_transport::Subscriber image_sub_top;

    ///////////////////////////////// Initialization END /////////////////////////////////


    ///////////////////////////////// RECOGNITION RELATED START/////////////////////////////////
    bool walking=false;
    boost::thread *spin_thread;

    // Create the action client
    actionlib::SimpleActionClient<hrs_project::BlinkAction> my_actionClient;
    actionlib::SimpleActionClient<hrs_project::SetSpeechVocabularyAction> my_vocClient;
    actionlib::SimpleActionClient<hrs_project::SpeechWithFeedbackAction> my_speechClient;
    ///////////////////////////////// RECOGNITION RELATED END /////////////////////////////////


    Nao_control()
        : it_(nh_), my_actionClient(nh_, "blink", true), my_vocClient(nh_, "/speech_vocabulary_action", true), my_speechClient(nh_, "/speech_action", true) 
    {

        ///////////////////////////////// Motion RELATED START/////////////////////////////////
        sensor_data_sub=nh_.subscribe("/joint_states",1, &Nao_control::sensorCallback, this);
        ///////////////////////////////// MOTION RELATED START/////////////////////////////////


        ///////////////////////////////// OPENCV RELATED START/////////////////////////////////
        if(camera_on == true)
        {
            image_sub_bottom = it_.subscribe("/nao_robot/camera/bottom/camera/image_raw", 1, &Nao_control::imageCb_bottom, this);
            image_sub_top = it_.subscribe("/nao_robot/camera/top/camera/image_raw", 1, &Nao_control::imageCb_top, this);

        }
        ///////////////////////////////// OPENCV RELATED START/////////////////////////////////



        ///////////////////////////////// RECOGNITION RELATED START/////////////////////////////////
        // Subscribe to topic bumper and specify that all data will be processed by function bumperCallback
        bumper_sub=nh_.subscribe("/bumper",1, &Nao_control::bumperCallback, this);

        // Subscribe to topic tactile_touch and specify that all data will be processed by function tactileCallback
        tactile_sub=nh_.subscribe("/tactile_touch",1, &Nao_control::tactileCallback, this);
        speech_pub = nh_.advertise<naoqi_bridge_msgs::SpeechWithFeedbackActionGoal>("/speech_action/goal", 1);
        voc_params_pub= nh_.advertise<naoqi_bridge_msgs::SetSpeechVocabularyActionGoal>("/speech_vocabulary_action/goal", 1);
        recog_start_srv=nh_.serviceClient<std_srvs::Empty>("/start_recognition");
        recog_stop_srv=nh_.serviceClient<std_srvs::Empty>("/stop_recognition");
        recog_sub=nh_.subscribe("/word_recognized",1, &Nao_control::speechRecognitionCallback, this);
        recog_words.clear();

        // for walking
        footContact_sub = nh_.subscribe<std_msgs::Bool>("/foot_contact", 1, &Nao_control::footContactCallback, this);
        walk_pub = nh_.advertise<geometry_msgs::Pose2D>("/cmd_pose", 1);
        stopWalk_srv = nh_.serviceClient<std_srvs::Empty>("/stop_walk_srv");

        stop_thread=false;
        spin_thread=new boost::thread(&spinThread);
        ///////////////////////////////// RECOGNITION RELATED END/////////////////////////////////

    }
    ~Nao_control()
    {
        ROS_WARN_STREAM("Destroy the object.");
        stop_thread=true;
        sleep(1);
        spin_thread->join();
    }


    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////     VISION     //////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////

    void imageCb_bottom(const sensor_msgs::ImageConstPtr& msg)
    {       

        cv_bridge::CvImagePtr cv_ptr;
        try
        {
            cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        }
        catch (cv_bridge::Exception& e)
        {
            ROS_ERROR("cv_bridge exception: %s", e.what());
            return;
        }

        Mat frame = cv_ptr->image;
        src_bottom = frame.clone();


        if (bMarkerLocation == true)
            get_Aruco_position_from_bottom_camera();

        // TASK 4: get rose position (Aruco marker)
        if (RoseSession == true)
            get_Rose_position_from_bottom_camera();

        // SHOW WINDOW
        imshow("Bottom camera",src_bottom);
        cv::waitKey(3);// !!!  
    }

    void imageCb_top(const sensor_msgs::ImageConstPtr& msg)
    {       

        cv_bridge::CvImagePtr cv_ptr;
        try
        {
            cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        }
        catch (cv_bridge::Exception& e)
        {
            ROS_ERROR("cv_bridge exception: %s", e.what());
            return;
        }

        Mat frame = cv_ptr->image;
        src_top = frame.clone();
       
        // SHOW WINDOW
        imshow("Top camera",src_top);
        cv::waitKey(3);// !!!  
    }

    void get_Aruco_position_from_bottom_camera() // Marker as set points on the stage
    {
        
        Mat ground_Marker = src_bottom.clone();

        float datad[5] = {-0.0481869853715082,  0.0201858398559121,
                   0.0030362056699177, -0.00172241952442813, 0};
        float datac[9] = {278.236008818534, 0,                156.194471689706,
                  0,                279.380102992049, 126.007123836447,
                  0,                0,                1};

        cv::Mat cameraP(3,3,CV_32FC1, datac);
        cv::Mat dist(5,1,CV_32FC1, datad);

        // Detect Arucomarkers with openCV lib
        cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_5X5_100);     
        //  USE MARKER HERE:
        // https://chev.me/arucogen/   
        std::vector<int> ids;
        std::vector<std::vector<cv::Point2f> > corners;
        cv::aruco::detectMarkers(ground_Marker, dictionary, corners, ids);

        // if at least one marker detected, draw it in the image
        if (ids.size() > 0 && ids[0] == 99){ // MODIFY
            ROS_INFO("here");
            cv::aruco::drawDetectedMarkers(ground_Marker, corners, ids);
        }
            
        // get 3D position and send one marker position to service parameter list
        vector<Vec3d> rvecs;
        vector<Vec3d> tvecs;
        aruco::estimatePoseSingleMarkers(corners, 0.0175, cameraP, dist, rvecs, tvecs);
        Vec3d p = (0, 0, 0);
        if(!corners.empty() && ids[0] == 99) // MODIFY
        {
            p = tvecs.at(0);
            ROS_INFO("Marker position: %f, %f, %f;",p[0],p[1],p[2]); 
            srv.request.goal_6Dposition_Marker = {p[0],p[1],p[2]};
            srv.request.getMarker_Ground = true;
        }
        else {
            srv.request.getMarker_Ground = false;
        }
        
        imshow("MArker position on ground", ground_Marker);
    }

    // Marker detection
    // ONLY activate getMarker for markers = 1, ..., which are set for representing roses
    void get_Rose_position_from_bottom_camera() 
    {
      
        Mat rose = src_bottom.clone();

        float datad[5] = {-0.0481869853715082,  0.0201858398559121,
                   0.0030362056699177, -0.00172241952442813, 0};
        float datac[9] = {278.236008818534, 0,                156.194471689706,
                  0,                279.380102992049, 126.007123836447,
                  0,                0,                1};

        cv::Mat cameraP(3,3,CV_32FC1, datac);
        cv::Mat dist(5,1,CV_32FC1, datad);

        // Detect Arucomarkers with openCV lib
        cv::Ptr<cv::aruco::Dictionary> dictionary = cv::aruco::getPredefinedDictionary(cv::aruco::DICT_5X5_100);     
        //  USE MARKER HERE:
        // https://chev.me/arucogen/   
        std::vector<int> ids;
        std::vector<std::vector<cv::Point2f> > corners;
        cv::aruco::detectMarkers(rose, dictionary, corners, ids);

        // if at least one marker detected, draw it in the image
        if (ids.size() > 0 && ids[0] == 1){ // MODIFY
            // ROS_INFO("here");
            cv::aruco::drawDetectedMarkers(rose, corners, ids);
        }
            
        // get 3D position and send one marker position to service parameter list
        vector<Vec3d> rvecs;
        vector<Vec3d> tvecs;
        aruco::estimatePoseSingleMarkers(corners, 0.0175, cameraP, dist, rvecs, tvecs);
        Vec3d p = (0, 0, 0);
        if(!corners.empty() && ids[0] == 1) // MODIFY
        {
            p = tvecs.at(0);
            // ROS_INFO("Marker position: %f, %f, %f;",p[0],p[1],p[2]); 
            srv.request.goal_6Dposition = {p[0],p[1],p[2]};
            srv.request.getMarker = true;
        }
        else {
            srv.request.getMarker = false;
        }
        
        imshow("Rose position", rose);
    }


    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////     MOTION     //////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////


    void sensorCallback(const sensor_msgs::JointState::ConstPtr& jointState)
    {
 
 
    }
   
    
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////    BUMPER    ////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////

    void bumperCallback(const naoqi_bridge_msgs::Bumper::ConstPtr& bumperState)
    {
        ROS_INFO_STREAM("Enter the bumper callback.");
        hrs_project::BlinkGoal blinkGoal;
        std_msgs::ColorRGBA color;
        std::vector<std_msgs::ColorRGBA> colors;
        bool blinkFlag = false;
        double time(0.0);
        /*
        * TODO 
        */
    }


    // Called once when the blink goal completes
    static void doneBlinkCallback(const actionlib::SimpleClientGoalState& state, const hrs_project::BlinkResultConstPtr& result)
    {
        ROS_INFO_STREAM("Finished in state: "<< state.toString().c_str());
        ROS_INFO_STREAM("Finished in state: "<< result);
    }

    // Called once when the blink goal becomes active
    static void activeBlinkCallback()
    {
        ROS_INFO("Blink goal just went active");
    }

    // Called every time feedback is received for the blink goal
    static void feedbackBlinkCallback(const hrs_project::BlinkFeedbackConstPtr& feedback)
    {
        ROS_INFO_STREAM("Got the following Feedback: "<< feedback->last_color);
    }




    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //////////////////////////////////////////////    TACTILE    //////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
   

    void tactileCallback(const naoqi_bridge_msgs::HeadTouch::ConstPtr& tactileState)
    {
        
        hrs_project::BlinkGoal blinkGoal;
        std_msgs::ColorRGBA color;
        std::vector<std_msgs::ColorRGBA> colors;
        bool blinkFlag = false;
        double time(0.0);

        if (tactileState->button == tactileState->buttonFront && tactileState->state == tactileState->statePressed)
        {
        
            blinkFlag = true;
            ROS_WARN_STREAM("Right Bumper has been Pressed");
            color.r = 0;
            color.g = 1;
            color.b = 0;
            color.a = 1;
            colors.push_back(color);
            time = 4.0;
        
        }
        else if (tactileState->button == tactileState->buttonMiddle && tactileState->state == tactileState->statePressed)
        {
            blinkFlag = true;
            ROS_WARN_STREAM("Left Bumper has been Pressed");
            color.r = 1;
            color.g = 0;
            color.b = 0;
            color.a = 1;
            colors.push_back(color);
            time = 2.0;
        }
        else
        {
            blinkFlag = false;
        }

        if(blinkFlag == true)
        {
            ROS_WARN_STREAM("GET BLINK COMMNAND");
            blinkGoal.colors = colors;
            blinkGoal.blink_duration = ros::Duration(time);
            blinkGoal.blink_rate_mean = 1.0;
            blinkGoal.blink_rate_sd = 0.1;
            my_actionClient.sendGoal(blinkGoal, this->doneBlinkCallback, this->activeBlinkCallback, this->feedbackBlinkCallback);
            ROS_WARN_STREAM("Finshed BLINK COMMNAND");
        }
        else
        {
            // Must be called to preempt the current action otherwise NAO stays in an infinite blinking state...
            my_actionClient.cancelAllGoals();
        }
        
    }


    void speechRecognitionCallback(const naoqi_bridge_msgs::WordRecognized::ConstPtr& msg)
    {
        ROS_INFO_STREAM("Get WordRecognized.");
    }

    void SpeechSendRose()
    {
        speechGoal.say = "Hey    gorgeous, this     seems   to  be  yours.";
        my_speechClient.sendGoalAndWait(speechGoal);
    }
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////     WALK     ////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////

    void footContactCallback(const std_msgs::BoolConstPtr& contact)
    {
        if (!contact->data)
        stopWalk();
    }

    ///////////////////////////////////////////////////////
    void stopWalk()
    {
        stopWalk_srv.call(srv_empty);
        walking = false;
        ROS_WARN("Stop walking");
    }


    //////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////     MAIN     ////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////

    void main_loop(ros::Rate rate_sleep)
    {
  
       
        ROS_INFO_STREAM("Enter main loop.");

        //////////////////////////////////////////////////////////////////
        /////////////////   TASK 3.1: WALK TO THE STAGE  /////////////////
        //////////////////////////////////////////////////////////////////
        // 
        ros::Duration(3).sleep();
        walk2Face();

        //////////////////////////////////////////////////////////////////
        ////////////////////////   TASK 2: DANCE  ////////////////////////
        //////////////////////////////////////////////////////////////////
        ////   LASTSTEP: robot is standing at the set point on the stage, posture initiated
        ////   NEXTSTEP: dance

        dance();

        //////////////////////////////////////////////////////////////////
        ////////////////////////   TASK 4: ROSE  ////////////////////////
        //////////////////////////////////////////////////////////////////
        ////   LASTSTEP: robot finished dancing. It is standing on the stage.
        ////   NEXTSTEP: find roses on the stage; walk to and grab the roses; walk and hand over to 3 people
        
        RoseSession = true; // bottom camera start to detect Rose markers
        while (RoseSession == true ) {  
            GrabRose();
            RoseSession = !srv.response.RosePick_Ready;
            int iRose_on = RoseSession;
            ROS_INFO("iRose_on?: %d", iRose_on );
        }
        // SpeechSendRose();
        handOver();
        

        //////////////////////////////////////////////////////////////////
        //////////////////   TASK 3.2: LEAVE THE STAGE  //////////////////
        //////////////////////////////////////////////////////////////////
        ////   LASTSTEP: finished sending roses, standing at a random spot at the stage
        ////   NEXTSTEP: find two props at the stage; go to the set point and leave
        // 1. cloth picking

        ClothSession = true; 

        while ( ClothSession == true  ) {  
            GrabCloth("red");
            ClothSession = !srv.response.RosePick_Ready;
            int iCloth_on = ClothSession;
            ROS_INFO("iCloth_on?: %d", iCloth_on );
        }

    
        handOver();



        //////////////////////////////////////////////////////////////////
        //////////////////////////      END     //////////////////////////
        //////////////////////////////////////////////////////////////////


        // rate_sleep.sleep();
        // }
    }

    //////////////////////////////////////////////////////////////////
    /////////////////   TASK 3.1: WALK TO THE STAGE  /////////////////
    //////////////////////////////////////////////////////////////////
    void walk2Face(){
        ROS_INFO_STREAM("Enter walk2Face.");


        ros::NodeHandle n;
        ros::ServiceClient client_walk2Face = n.serviceClient<hrs_project::MoveJoints>("Service_walk2Face");// client connnected to service 


        if (client_walk2Face.call(srv) )
        {
            ROS_INFO("Service_walk2Face Finished");     
        }
        else
        {
            ROS_ERROR("Failed to call Service_walk2Face");
        }


    }

    //////////////////////////////////////////////////////////////////
    ////////////////////////   TASK 2: DANCE  ////////////////////////
    //////////////////////////////////////////////////////////////////
    

    int getSpeechCommand(){
        ros::NodeHandle n;
        ros::ServiceClient client_SpeechCommand = n.serviceClient<hrs_project::MoveJoints>("Service_SpeechCommand");// client connnected to service 
        std::string sSpeechCommand;
        int iDanceSpeechInstruction;


        if (client_SpeechCommand.call(srv) )
        {
            ROS_INFO("Service_SpeechCommand Finished");     
            sSpeechCommand = srv.response.speechCommand;
        }
        else
        {
            ROS_ERROR("Failed to call Service_SpeechCommand");
        }

        if(sSpeechCommand == "quit")
            iDanceSpeechInstruction = 9;
        else if(sSpeechCommand == "disco")
            iDanceSpeechInstruction = 1;
        else if(sSpeechCommand == "robot")
            iDanceSpeechInstruction = 2;
        else if(sSpeechCommand == "exotic")
            iDanceSpeechInstruction = 3;
        else
            iDanceSpeechInstruction = 0;


        return iDanceSpeechInstruction;
    }


    void dance(){
        ROS_INFO_STREAM("Enter DANCE.");

        // 0 service initialization
        ros::NodeHandle n;
        ros::ServiceClient client_dance_1 = n.serviceClient<hrs_project::MoveJoints>("Service_dance_routine_1");// client connnected to service task1
        ros::ServiceClient client_dance_2 = n.serviceClient<hrs_project::MoveJoints>("Service_dance_routine_2");// client connnected to service task1
        ros::ServiceClient client_dance_3 = n.serviceClient<hrs_project::MoveJoints>("Service_dance_routine_3");// client connnected to service task1


        
        // 1 getSpeechCommand
        int iDanceSpeechInstruction;
        ROS_WARN("Please give speech instruction: \n disco/ robot/ stripper/ quit");
        iDanceSpeechInstruction = getSpeechCommand();

        

        

        // 2 Dance mode switch and enter corresponding service
        while (iDanceSpeechInstruction != 9)
        {
            // 1. waiting for instruction
                // ROS_WARN("I AM BORING!!! TELL ME WHAT TO DO NEXT >_< ");
            while (iDanceSpeechInstruction != 1 && iDanceSpeechInstruction != 2 && iDanceSpeechInstruction != 3 && iDanceSpeechInstruction != 9){    
                ROS_WARN("Please give speech instruction: \n disco/ robot/ stripper/ quit"); 
                iDanceSpeechInstruction = getSpeechCommand();
            }
            ROS_INFO("Get dance instuction successfully! Your order number: %d", iDanceSpeechInstruction);

            // 2. switch dance mode
            if(iDanceSpeechInstruction == 1) // call service: Service_dance_routine_1
            {
                ROS_INFO_STREAM("Enter Routine 1");

                if (client_dance_1.call(srv))
                {
                    // vector<double> resVec = srv.response.result;
                    // ROS_INFO("Service Finished: %f",resVec[2]);
                    ROS_INFO("Service_dance_routine_1 Finished");      
                }
                else
                {
                    ROS_ERROR("Failed to call service");
                }
                iDanceSpeechInstruction = 0;
            }
            else if(iDanceSpeechInstruction == 2) // call service: Service_dance_routine_2
            {
                ROS_INFO_STREAM("Enter Routine 2");

                if (client_dance_2.call(srv))
                {
                    ROS_INFO("Service_dance_routine_2 Finished");      
                }
                else
                {
                    ROS_ERROR("Failed to call service");
                }
                iDanceSpeechInstruction = 0;
            }
            else if(iDanceSpeechInstruction == 3) // call service: Service_dance_routine_3
            {
                ROS_INFO_STREAM("Enter Routine 3");

                if (client_dance_3.call(srv))
                {
                    ROS_INFO("Service_dance_routine_3 Finished");      
                }
                else
                {
                    ROS_ERROR("Failed to call service");
                }
                iDanceSpeechInstruction = 0;
            }
            else if(iDanceSpeechInstruction == 9) // call service: Service_dance_routine_3
            {
                break;
            }

            // 3. wait for next instruction
            
            while (iDanceSpeechInstruction != 1 && iDanceSpeechInstruction != 2 && iDanceSpeechInstruction != 3 && iDanceSpeechInstruction != 9){    
                ROS_WARN("Please give speech instruction: \n disco/ robot/ stripper/ quit"); 
                iDanceSpeechInstruction = getSpeechCommand();
            }
            ROS_INFO("Get dance instuction successfully! Your order number: %d", iDanceSpeechInstruction);
            
        }


        ROS_INFO_STREAM("Quit Dancing");
    }
    //////////////////////////////////////////////////////////////////
    ////////////////////////   TASK 4: ROSE  ////////////////////////
    //////////////////////////////////////////////////////////////////
    void GrabRose(){
        ROS_INFO_STREAM("Enter GrabRose.");


        ros::NodeHandle n;
        ros::ServiceClient client_RosePick = n.serviceClient<hrs_project::MoveJoints>("Service_RosePick");// client connnected to service 


        if (client_RosePick.call(srv) )
        {
            ROS_INFO("Service_RosePick Finished");     
        }
        else
        {
            ROS_ERROR("Failed to call Service_RosePick");
        }

   
    }


    void handOver(){
        ROS_INFO_STREAM("Enter handOver.");


        ros::NodeHandle n;
        ros::ServiceClient client_handOver = n.serviceClient<hrs_project::MoveJoints>("Service_handOver");// client connnected to service 


        if (client_handOver.call(srv) )
        {
            ROS_INFO("Service_handOver Finished");     
        }
        else
        {
            ROS_ERROR("Failed to call Service_handOver");
        }


    }
   

    //////////////////////////////////////////////////////////////////
    //////////////////   TASK 3.2: Cloth picking    //////////////////
    //////////////////   TASK 3.2: LEAVE THE STAGE  //////////////////
    //////////////////////////////////////////////////////////////////
    void GrabCloth(string sClothColor){
        ROS_INFO_STREAM("Enter GrabCloth.");

        srv.request.cloth_color = sClothColor;
        ros::NodeHandle n;
        ros::ServiceClient client_ClothPick = n.serviceClient<hrs_project::MoveJoints>("Service_ClothPick");// client connnected to service 


        if (client_ClothPick.call(srv) )
        {
            ROS_INFO("Service_ClothPick Finished");     
        }
        else
        {
            ROS_ERROR("Failed to call Service_ClothPick");
        }
        
    }

    void gotoMarker(){
        ROS_INFO_STREAM("Enter gotoMarker.");

        ros::NodeHandle n;
        ros::ServiceClient client_GotoMarker = n.serviceClient<hrs_project::MoveJoints>("Service_GotoMarker");// client connnected to service 


        if (client_GotoMarker.call(srv) )
        {
            ROS_INFO("Service_GotoMarker Finished");     
        }
        else
        {
            ROS_ERROR("Failed to call Service_GotoMarker");
        }

        
    }

};






int main(int argc, char** argv)
{
    ros::init(argc, argv, "hrs_project"); // client node initialization with user input
    

    // Enter rosspin loop
    Nao_control TermiNAOtor;
    ROS_INFO_STREAM("TermiNAOtor is built and Started the Client");

    srv.request.goal_6Dposition = {0.15, -0.1, 0.05}; // initialize parameter
    srv.request.goal_6Dposition_Marker = {0.15, -0.1, 0.05}; // initialize parameter

    // Get into the main loop:
    ros::Rate rate_sleep(10);
    TermiNAOtor.main_loop(rate_sleep);

    return 0;

}


// OPEN CHOREGRAPHE -> connect

// LAUNCH NAO
// roslaunch nao_bringup nao_full_py.launch
// roslaunch nao_apps tactile.launch 
// roslaunch nao_apps speech.launch
// roslaunch nao_apps leds.launch

