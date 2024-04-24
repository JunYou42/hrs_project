; Auto-generated. Do not edit!


(cl:in-package hrs_project-srv)


;//! \htmlinclude MoveJoints-request.msg.html

(cl:defclass <MoveJoints-request> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform "")
   (end_effector
    :reader end_effector
    :initarg :end_effector
    :type cl:string
    :initform "")
   (goal_6Dposition_Marker
    :reader goal_6Dposition_Marker
    :initarg :goal_6Dposition_Marker
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal_6Dposition_Cloth
    :reader goal_6Dposition_Cloth
    :initarg :goal_6Dposition_Cloth
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (goal_6Dposition
    :reader goal_6Dposition
    :initarg :goal_6Dposition
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (SpeedorTime
    :reader SpeedorTime
    :initarg :SpeedorTime
    :type cl:float
    :initform 0.0)
   (axisMask
    :reader axisMask
    :initarg :axisMask
    :type cl:float
    :initform 0.0)
   (control_mod
    :reader control_mod
    :initarg :control_mod
    :type cl:fixnum
    :initform 0)
   (getMarker
    :reader getMarker
    :initarg :getMarker
    :type cl:boolean
    :initform cl:nil)
   (getMarker_Ground
    :reader getMarker_Ground
    :initarg :getMarker_Ground
    :type cl:boolean
    :initform cl:nil)
   (cloth_color
    :reader cloth_color
    :initarg :cloth_color
    :type cl:string
    :initform ""))
)

(cl:defclass MoveJoints-request (<MoveJoints-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveJoints-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveJoints-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrs_project-srv:<MoveJoints-request> is deprecated: use hrs_project-srv:MoveJoints-request instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:joint_name-val is deprecated.  Use hrs_project-srv:joint_name instead.")
  (joint_name m))

(cl:ensure-generic-function 'end_effector-val :lambda-list '(m))
(cl:defmethod end_effector-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:end_effector-val is deprecated.  Use hrs_project-srv:end_effector instead.")
  (end_effector m))

(cl:ensure-generic-function 'goal_6Dposition_Marker-val :lambda-list '(m))
(cl:defmethod goal_6Dposition_Marker-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:goal_6Dposition_Marker-val is deprecated.  Use hrs_project-srv:goal_6Dposition_Marker instead.")
  (goal_6Dposition_Marker m))

(cl:ensure-generic-function 'goal_6Dposition_Cloth-val :lambda-list '(m))
(cl:defmethod goal_6Dposition_Cloth-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:goal_6Dposition_Cloth-val is deprecated.  Use hrs_project-srv:goal_6Dposition_Cloth instead.")
  (goal_6Dposition_Cloth m))

(cl:ensure-generic-function 'goal_6Dposition-val :lambda-list '(m))
(cl:defmethod goal_6Dposition-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:goal_6Dposition-val is deprecated.  Use hrs_project-srv:goal_6Dposition instead.")
  (goal_6Dposition m))

(cl:ensure-generic-function 'SpeedorTime-val :lambda-list '(m))
(cl:defmethod SpeedorTime-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:SpeedorTime-val is deprecated.  Use hrs_project-srv:SpeedorTime instead.")
  (SpeedorTime m))

(cl:ensure-generic-function 'axisMask-val :lambda-list '(m))
(cl:defmethod axisMask-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:axisMask-val is deprecated.  Use hrs_project-srv:axisMask instead.")
  (axisMask m))

(cl:ensure-generic-function 'control_mod-val :lambda-list '(m))
(cl:defmethod control_mod-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:control_mod-val is deprecated.  Use hrs_project-srv:control_mod instead.")
  (control_mod m))

(cl:ensure-generic-function 'getMarker-val :lambda-list '(m))
(cl:defmethod getMarker-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:getMarker-val is deprecated.  Use hrs_project-srv:getMarker instead.")
  (getMarker m))

(cl:ensure-generic-function 'getMarker_Ground-val :lambda-list '(m))
(cl:defmethod getMarker_Ground-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:getMarker_Ground-val is deprecated.  Use hrs_project-srv:getMarker_Ground instead.")
  (getMarker_Ground m))

(cl:ensure-generic-function 'cloth_color-val :lambda-list '(m))
(cl:defmethod cloth_color-val ((m <MoveJoints-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:cloth_color-val is deprecated.  Use hrs_project-srv:cloth_color instead.")
  (cloth_color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveJoints-request>) ostream)
  "Serializes a message object of type '<MoveJoints-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'end_effector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'end_effector))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_6Dposition_Marker))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'goal_6Dposition_Marker))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_6Dposition_Cloth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'goal_6Dposition_Cloth))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'goal_6Dposition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'goal_6Dposition))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'SpeedorTime))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'axisMask))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'control_mod)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'getMarker) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'getMarker_Ground) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cloth_color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cloth_color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveJoints-request>) istream)
  "Deserializes a message object of type '<MoveJoints-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'end_effector) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'end_effector) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_6Dposition_Marker) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_6Dposition_Marker)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_6Dposition_Cloth) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_6Dposition_Cloth)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'goal_6Dposition) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'goal_6Dposition)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SpeedorTime) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'axisMask) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_mod) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:slot-value msg 'getMarker) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'getMarker_Ground) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cloth_color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cloth_color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveJoints-request>)))
  "Returns string type for a service object of type '<MoveJoints-request>"
  "hrs_project/MoveJointsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJoints-request)))
  "Returns string type for a service object of type 'MoveJoints-request"
  "hrs_project/MoveJointsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveJoints-request>)))
  "Returns md5sum for a message object of type '<MoveJoints-request>"
  "904bb3e81ce1f0698f6188c53777d573")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveJoints-request)))
  "Returns md5sum for a message object of type 'MoveJoints-request"
  "904bb3e81ce1f0698f6188c53777d573")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveJoints-request>)))
  "Returns full string definition for message of type '<MoveJoints-request>"
  (cl:format cl:nil "~%string joint_name~%string end_effector~%float64[] goal_6Dposition_Marker~%float64[] goal_6Dposition_Cloth~%float64[] goal_6Dposition~%~%float64 SpeedorTime~%float64 axisMask~%int8 control_mod~%bool getMarker~%bool getMarker_Ground~%~%string cloth_color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveJoints-request)))
  "Returns full string definition for message of type 'MoveJoints-request"
  (cl:format cl:nil "~%string joint_name~%string end_effector~%float64[] goal_6Dposition_Marker~%float64[] goal_6Dposition_Cloth~%float64[] goal_6Dposition~%~%float64 SpeedorTime~%float64 axisMask~%int8 control_mod~%bool getMarker~%bool getMarker_Ground~%~%string cloth_color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveJoints-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
     4 (cl:length (cl:slot-value msg 'end_effector))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_6Dposition_Marker) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_6Dposition_Cloth) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'goal_6Dposition) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     1
     1
     1
     4 (cl:length (cl:slot-value msg 'cloth_color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveJoints-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveJoints-request
    (cl:cons ':joint_name (joint_name msg))
    (cl:cons ':end_effector (end_effector msg))
    (cl:cons ':goal_6Dposition_Marker (goal_6Dposition_Marker msg))
    (cl:cons ':goal_6Dposition_Cloth (goal_6Dposition_Cloth msg))
    (cl:cons ':goal_6Dposition (goal_6Dposition msg))
    (cl:cons ':SpeedorTime (SpeedorTime msg))
    (cl:cons ':axisMask (axisMask msg))
    (cl:cons ':control_mod (control_mod msg))
    (cl:cons ':getMarker (getMarker msg))
    (cl:cons ':getMarker_Ground (getMarker_Ground msg))
    (cl:cons ':cloth_color (cloth_color msg))
))
;//! \htmlinclude MoveJoints-response.msg.html

(cl:defclass <MoveJoints-response> (roslisp-msg-protocol:ros-message)
  ((num
    :reader num
    :initarg :num
    :type cl:float
    :initform 0.0)
   (RosePick_Ready
    :reader RosePick_Ready
    :initarg :RosePick_Ready
    :type cl:boolean
    :initform cl:nil)
   (bMarkerArrived
    :reader bMarkerArrived
    :initarg :bMarkerArrived
    :type cl:boolean
    :initform cl:nil)
   (speechCommand
    :reader speechCommand
    :initarg :speechCommand
    :type cl:string
    :initform ""))
)

(cl:defclass MoveJoints-response (<MoveJoints-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveJoints-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveJoints-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hrs_project-srv:<MoveJoints-response> is deprecated: use hrs_project-srv:MoveJoints-response instead.")))

(cl:ensure-generic-function 'num-val :lambda-list '(m))
(cl:defmethod num-val ((m <MoveJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:num-val is deprecated.  Use hrs_project-srv:num instead.")
  (num m))

(cl:ensure-generic-function 'RosePick_Ready-val :lambda-list '(m))
(cl:defmethod RosePick_Ready-val ((m <MoveJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:RosePick_Ready-val is deprecated.  Use hrs_project-srv:RosePick_Ready instead.")
  (RosePick_Ready m))

(cl:ensure-generic-function 'bMarkerArrived-val :lambda-list '(m))
(cl:defmethod bMarkerArrived-val ((m <MoveJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:bMarkerArrived-val is deprecated.  Use hrs_project-srv:bMarkerArrived instead.")
  (bMarkerArrived m))

(cl:ensure-generic-function 'speechCommand-val :lambda-list '(m))
(cl:defmethod speechCommand-val ((m <MoveJoints-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hrs_project-srv:speechCommand-val is deprecated.  Use hrs_project-srv:speechCommand instead.")
  (speechCommand m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveJoints-response>) ostream)
  "Serializes a message object of type '<MoveJoints-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'num))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'RosePick_Ready) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bMarkerArrived) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'speechCommand))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'speechCommand))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveJoints-response>) istream)
  "Deserializes a message object of type '<MoveJoints-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'num) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'RosePick_Ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'bMarkerArrived) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speechCommand) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'speechCommand) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveJoints-response>)))
  "Returns string type for a service object of type '<MoveJoints-response>"
  "hrs_project/MoveJointsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJoints-response)))
  "Returns string type for a service object of type 'MoveJoints-response"
  "hrs_project/MoveJointsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveJoints-response>)))
  "Returns md5sum for a message object of type '<MoveJoints-response>"
  "904bb3e81ce1f0698f6188c53777d573")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveJoints-response)))
  "Returns md5sum for a message object of type 'MoveJoints-response"
  "904bb3e81ce1f0698f6188c53777d573")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveJoints-response>)))
  "Returns full string definition for message of type '<MoveJoints-response>"
  (cl:format cl:nil "~%~%float64 num~%bool RosePick_Ready~%bool bMarkerArrived~%string speechCommand~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveJoints-response)))
  "Returns full string definition for message of type 'MoveJoints-response"
  (cl:format cl:nil "~%~%float64 num~%bool RosePick_Ready~%bool bMarkerArrived~%string speechCommand~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveJoints-response>))
  (cl:+ 0
     8
     1
     1
     4 (cl:length (cl:slot-value msg 'speechCommand))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveJoints-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveJoints-response
    (cl:cons ':num (num msg))
    (cl:cons ':RosePick_Ready (RosePick_Ready msg))
    (cl:cons ':bMarkerArrived (bMarkerArrived msg))
    (cl:cons ':speechCommand (speechCommand msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveJoints)))
  'MoveJoints-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveJoints)))
  'MoveJoints-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveJoints)))
  "Returns string type for a service object of type '<MoveJoints>"
  "hrs_project/MoveJoints")