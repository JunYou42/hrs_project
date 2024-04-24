;; Auto-generated. Do not edit!


(when (boundp 'hrs_project::MoveJoints)
  (if (not (find-package "HRS_PROJECT"))
    (make-package "HRS_PROJECT"))
  (shadow 'MoveJoints (find-package "HRS_PROJECT")))
(unless (find-package "HRS_PROJECT::MOVEJOINTS")
  (make-package "HRS_PROJECT::MOVEJOINTS"))
(unless (find-package "HRS_PROJECT::MOVEJOINTSREQUEST")
  (make-package "HRS_PROJECT::MOVEJOINTSREQUEST"))
(unless (find-package "HRS_PROJECT::MOVEJOINTSRESPONSE")
  (make-package "HRS_PROJECT::MOVEJOINTSRESPONSE"))

(in-package "ROS")





(defclass hrs_project::MoveJointsRequest
  :super ros::object
  :slots (_joint_name _end_effector _goal_6Dposition_Marker _goal_6Dposition_Cloth _goal_6Dposition _SpeedorTime _axisMask _control_mod _getMarker _getMarker_Ground _cloth_color ))

(defmethod hrs_project::MoveJointsRequest
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:end_effector __end_effector) "")
    ((:goal_6Dposition_Marker __goal_6Dposition_Marker) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goal_6Dposition_Cloth __goal_6Dposition_Cloth) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:goal_6Dposition __goal_6Dposition) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:SpeedorTime __SpeedorTime) 0.0)
    ((:axisMask __axisMask) 0.0)
    ((:control_mod __control_mod) 0)
    ((:getMarker __getMarker) nil)
    ((:getMarker_Ground __getMarker_Ground) nil)
    ((:cloth_color __cloth_color) "")
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _end_effector (string __end_effector))
   (setq _goal_6Dposition_Marker __goal_6Dposition_Marker)
   (setq _goal_6Dposition_Cloth __goal_6Dposition_Cloth)
   (setq _goal_6Dposition __goal_6Dposition)
   (setq _SpeedorTime (float __SpeedorTime))
   (setq _axisMask (float __axisMask))
   (setq _control_mod (round __control_mod))
   (setq _getMarker __getMarker)
   (setq _getMarker_Ground __getMarker_Ground)
   (setq _cloth_color (string __cloth_color))
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:end_effector
   (&optional __end_effector)
   (if __end_effector (setq _end_effector __end_effector)) _end_effector)
  (:goal_6Dposition_Marker
   (&optional __goal_6Dposition_Marker)
   (if __goal_6Dposition_Marker (setq _goal_6Dposition_Marker __goal_6Dposition_Marker)) _goal_6Dposition_Marker)
  (:goal_6Dposition_Cloth
   (&optional __goal_6Dposition_Cloth)
   (if __goal_6Dposition_Cloth (setq _goal_6Dposition_Cloth __goal_6Dposition_Cloth)) _goal_6Dposition_Cloth)
  (:goal_6Dposition
   (&optional __goal_6Dposition)
   (if __goal_6Dposition (setq _goal_6Dposition __goal_6Dposition)) _goal_6Dposition)
  (:SpeedorTime
   (&optional __SpeedorTime)
   (if __SpeedorTime (setq _SpeedorTime __SpeedorTime)) _SpeedorTime)
  (:axisMask
   (&optional __axisMask)
   (if __axisMask (setq _axisMask __axisMask)) _axisMask)
  (:control_mod
   (&optional __control_mod)
   (if __control_mod (setq _control_mod __control_mod)) _control_mod)
  (:getMarker
   (&optional __getMarker)
   (if __getMarker (setq _getMarker __getMarker)) _getMarker)
  (:getMarker_Ground
   (&optional __getMarker_Ground)
   (if __getMarker_Ground (setq _getMarker_Ground __getMarker_Ground)) _getMarker_Ground)
  (:cloth_color
   (&optional __cloth_color)
   (if __cloth_color (setq _cloth_color __cloth_color)) _cloth_color)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; string _end_effector
    4 (length _end_effector)
    ;; float64[] _goal_6Dposition_Marker
    (* 8    (length _goal_6Dposition_Marker)) 4
    ;; float64[] _goal_6Dposition_Cloth
    (* 8    (length _goal_6Dposition_Cloth)) 4
    ;; float64[] _goal_6Dposition
    (* 8    (length _goal_6Dposition)) 4
    ;; float64 _SpeedorTime
    8
    ;; float64 _axisMask
    8
    ;; int8 _control_mod
    1
    ;; bool _getMarker
    1
    ;; bool _getMarker_Ground
    1
    ;; string _cloth_color
    4 (length _cloth_color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; string _end_effector
       (write-long (length _end_effector) s) (princ _end_effector s)
     ;; float64[] _goal_6Dposition_Marker
     (write-long (length _goal_6Dposition_Marker) s)
     (dotimes (i (length _goal_6Dposition_Marker))
       (sys::poke (elt _goal_6Dposition_Marker i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _goal_6Dposition_Cloth
     (write-long (length _goal_6Dposition_Cloth) s)
     (dotimes (i (length _goal_6Dposition_Cloth))
       (sys::poke (elt _goal_6Dposition_Cloth i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _goal_6Dposition
     (write-long (length _goal_6Dposition) s)
     (dotimes (i (length _goal_6Dposition))
       (sys::poke (elt _goal_6Dposition i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _SpeedorTime
       (sys::poke _SpeedorTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _axisMask
       (sys::poke _axisMask (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _control_mod
       (write-byte _control_mod s)
     ;; bool _getMarker
       (if _getMarker (write-byte -1 s) (write-byte 0 s))
     ;; bool _getMarker_Ground
       (if _getMarker_Ground (write-byte -1 s) (write-byte 0 s))
     ;; string _cloth_color
       (write-long (length _cloth_color) s) (princ _cloth_color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _end_effector
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _end_effector (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64[] _goal_6Dposition_Marker
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_6Dposition_Marker (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_6Dposition_Marker i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _goal_6Dposition_Cloth
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_6Dposition_Cloth (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_6Dposition_Cloth i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _goal_6Dposition
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _goal_6Dposition (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _goal_6Dposition i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _SpeedorTime
     (setq _SpeedorTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _axisMask
     (setq _axisMask (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _control_mod
     (setq _control_mod (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _control_mod 127) (setq _control_mod (- _control_mod 256)))
   ;; bool _getMarker
     (setq _getMarker (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _getMarker_Ground
     (setq _getMarker_Ground (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _cloth_color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cloth_color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hrs_project::MoveJointsResponse
  :super ros::object
  :slots (_num _RosePick_Ready _bMarkerArrived _speechCommand ))

(defmethod hrs_project::MoveJointsResponse
  (:init
   (&key
    ((:num __num) 0.0)
    ((:RosePick_Ready __RosePick_Ready) nil)
    ((:bMarkerArrived __bMarkerArrived) nil)
    ((:speechCommand __speechCommand) "")
    )
   (send-super :init)
   (setq _num (float __num))
   (setq _RosePick_Ready __RosePick_Ready)
   (setq _bMarkerArrived __bMarkerArrived)
   (setq _speechCommand (string __speechCommand))
   self)
  (:num
   (&optional __num)
   (if __num (setq _num __num)) _num)
  (:RosePick_Ready
   (&optional __RosePick_Ready)
   (if __RosePick_Ready (setq _RosePick_Ready __RosePick_Ready)) _RosePick_Ready)
  (:bMarkerArrived
   (&optional __bMarkerArrived)
   (if __bMarkerArrived (setq _bMarkerArrived __bMarkerArrived)) _bMarkerArrived)
  (:speechCommand
   (&optional __speechCommand)
   (if __speechCommand (setq _speechCommand __speechCommand)) _speechCommand)
  (:serialization-length
   ()
   (+
    ;; float64 _num
    8
    ;; bool _RosePick_Ready
    1
    ;; bool _bMarkerArrived
    1
    ;; string _speechCommand
    4 (length _speechCommand)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _num
       (sys::poke _num (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _RosePick_Ready
       (if _RosePick_Ready (write-byte -1 s) (write-byte 0 s))
     ;; bool _bMarkerArrived
       (if _bMarkerArrived (write-byte -1 s) (write-byte 0 s))
     ;; string _speechCommand
       (write-long (length _speechCommand) s) (princ _speechCommand s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _num
     (setq _num (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _RosePick_Ready
     (setq _RosePick_Ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _bMarkerArrived
     (setq _bMarkerArrived (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _speechCommand
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _speechCommand (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hrs_project::MoveJoints
  :super ros::object
  :slots ())

(setf (get hrs_project::MoveJoints :md5sum-) "904bb3e81ce1f0698f6188c53777d573")
(setf (get hrs_project::MoveJoints :datatype-) "hrs_project/MoveJoints")
(setf (get hrs_project::MoveJoints :request) hrs_project::MoveJointsRequest)
(setf (get hrs_project::MoveJoints :response) hrs_project::MoveJointsResponse)

(defmethod hrs_project::MoveJointsRequest
  (:response () (instance hrs_project::MoveJointsResponse :init)))

(setf (get hrs_project::MoveJointsRequest :md5sum-) "904bb3e81ce1f0698f6188c53777d573")
(setf (get hrs_project::MoveJointsRequest :datatype-) "hrs_project/MoveJointsRequest")
(setf (get hrs_project::MoveJointsRequest :definition-)
      "
string joint_name
string end_effector
float64[] goal_6Dposition_Marker
float64[] goal_6Dposition_Cloth
float64[] goal_6Dposition

float64 SpeedorTime
float64 axisMask
int8 control_mod
bool getMarker
bool getMarker_Ground

string cloth_color
---


float64 num
bool RosePick_Ready
bool bMarkerArrived
string speechCommand


")

(setf (get hrs_project::MoveJointsResponse :md5sum-) "904bb3e81ce1f0698f6188c53777d573")
(setf (get hrs_project::MoveJointsResponse :datatype-) "hrs_project/MoveJointsResponse")
(setf (get hrs_project::MoveJointsResponse :definition-)
      "
string joint_name
string end_effector
float64[] goal_6Dposition_Marker
float64[] goal_6Dposition_Cloth
float64[] goal_6Dposition

float64 SpeedorTime
float64 axisMask
int8 control_mod
bool getMarker
bool getMarker_Ground

string cloth_color
---


float64 num
bool RosePick_Ready
bool bMarkerArrived
string speechCommand


")



(provide :hrs_project/MoveJoints "904bb3e81ce1f0698f6188c53777d573")


