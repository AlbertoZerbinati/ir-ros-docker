; Auto-generated. Do not edit!


(cl:in-package vacuum_pkg-msg)


;//! \htmlinclude status_msg.msg.html

(cl:defclass <status_msg> (roslisp-msg-protocol:ros-message)
  ((ROOM_ID
    :reader ROOM_ID
    :initarg :ROOM_ID
    :type cl:string
    :initform "")
   (ROOM_NAME
    :reader ROOM_NAME
    :initarg :ROOM_NAME
    :type cl:string
    :initform "")
   (BATTERY
    :reader BATTERY
    :initarg :BATTERY
    :type cl:float
    :initform 0.0))
)

(cl:defclass status_msg (<status_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <status_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'status_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vacuum_pkg-msg:<status_msg> is deprecated: use vacuum_pkg-msg:status_msg instead.")))

(cl:ensure-generic-function 'ROOM_ID-val :lambda-list '(m))
(cl:defmethod ROOM_ID-val ((m <status_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_pkg-msg:ROOM_ID-val is deprecated.  Use vacuum_pkg-msg:ROOM_ID instead.")
  (ROOM_ID m))

(cl:ensure-generic-function 'ROOM_NAME-val :lambda-list '(m))
(cl:defmethod ROOM_NAME-val ((m <status_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_pkg-msg:ROOM_NAME-val is deprecated.  Use vacuum_pkg-msg:ROOM_NAME instead.")
  (ROOM_NAME m))

(cl:ensure-generic-function 'BATTERY-val :lambda-list '(m))
(cl:defmethod BATTERY-val ((m <status_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_pkg-msg:BATTERY-val is deprecated.  Use vacuum_pkg-msg:BATTERY instead.")
  (BATTERY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <status_msg>) ostream)
  "Serializes a message object of type '<status_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ROOM_ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ROOM_ID))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ROOM_NAME))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ROOM_NAME))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'BATTERY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <status_msg>) istream)
  "Deserializes a message object of type '<status_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ROOM_ID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ROOM_ID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ROOM_NAME) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ROOM_NAME) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'BATTERY) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<status_msg>)))
  "Returns string type for a message object of type '<status_msg>"
  "vacuum_pkg/status_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'status_msg)))
  "Returns string type for a message object of type 'status_msg"
  "vacuum_pkg/status_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<status_msg>)))
  "Returns md5sum for a message object of type '<status_msg>"
  "131a6d89e159ae530e7a3b57e773cde5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'status_msg)))
  "Returns md5sum for a message object of type 'status_msg"
  "131a6d89e159ae530e7a3b57e773cde5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<status_msg>)))
  "Returns full string definition for message of type '<status_msg>"
  (cl:format cl:nil "string ROOM_ID~%string ROOM_NAME~%float32 BATTERY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'status_msg)))
  "Returns full string definition for message of type 'status_msg"
  (cl:format cl:nil "string ROOM_ID~%string ROOM_NAME~%float32 BATTERY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <status_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ROOM_ID))
     4 (cl:length (cl:slot-value msg 'ROOM_NAME))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <status_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'status_msg
    (cl:cons ':ROOM_ID (ROOM_ID msg))
    (cl:cons ':ROOM_NAME (ROOM_NAME msg))
    (cl:cons ':BATTERY (BATTERY msg))
))
