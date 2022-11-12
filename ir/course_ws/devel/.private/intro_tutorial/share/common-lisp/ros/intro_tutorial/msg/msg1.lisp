; Auto-generated. Do not edit!


(cl:in-package intro_tutorial-msg)


;//! \htmlinclude msg1.msg.html

(cl:defclass <msg1> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0)
   (C
    :reader C
    :initarg :C
    :type cl:string
    :initform ""))
)

(cl:defclass msg1 (<msg1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intro_tutorial-msg:<msg1> is deprecated: use intro_tutorial-msg:msg1 instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intro_tutorial-msg:A-val is deprecated.  Use intro_tutorial-msg:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intro_tutorial-msg:B-val is deprecated.  Use intro_tutorial-msg:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intro_tutorial-msg:C-val is deprecated.  Use intro_tutorial-msg:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg1>) ostream)
  "Serializes a message object of type '<msg1>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'C))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'C))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg1>) istream)
  "Deserializes a message object of type '<msg1>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'C) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg1>)))
  "Returns string type for a message object of type '<msg1>"
  "intro_tutorial/msg1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg1)))
  "Returns string type for a message object of type 'msg1"
  "intro_tutorial/msg1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg1>)))
  "Returns md5sum for a message object of type '<msg1>"
  "9660119d8b929d1f29ca833ea8ed329f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg1)))
  "Returns md5sum for a message object of type 'msg1"
  "9660119d8b929d1f29ca833ea8ed329f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg1>)))
  "Returns full string definition for message of type '<msg1>"
  (cl:format cl:nil "int32 A~%int32 B~%string C~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg1)))
  "Returns full string definition for message of type 'msg1"
  (cl:format cl:nil "int32 A~%int32 B~%string C~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg1>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'C))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg1>))
  "Converts a ROS message object to a list"
  (cl:list 'msg1
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
