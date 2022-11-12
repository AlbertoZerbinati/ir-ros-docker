; Auto-generated. Do not edit!


(cl:in-package srv_tutorial-srv)


;//! \htmlinclude srv1-request.msg.html

(cl:defclass <srv1-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:fixnum
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:fixnum
    :initform 0)
   (C
    :reader C
    :initarg :C
    :type cl:fixnum
    :initform 0))
)

(cl:defclass srv1-request (<srv1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srv_tutorial-srv:<srv1-request> is deprecated: use srv_tutorial-srv:srv1-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <srv1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv_tutorial-srv:A-val is deprecated.  Use srv_tutorial-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <srv1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv_tutorial-srv:B-val is deprecated.  Use srv_tutorial-srv:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <srv1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv_tutorial-srv:C-val is deprecated.  Use srv_tutorial-srv:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv1-request>) ostream)
  "Serializes a message object of type '<srv1-request>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'C)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv1-request>) istream)
  "Deserializes a message object of type '<srv1-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv1-request>)))
  "Returns string type for a service object of type '<srv1-request>"
  "srv_tutorial/srv1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv1-request)))
  "Returns string type for a service object of type 'srv1-request"
  "srv_tutorial/srv1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv1-request>)))
  "Returns md5sum for a message object of type '<srv1-request>"
  "f8e36621b04a3359422e55a9b256fdc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv1-request)))
  "Returns md5sum for a message object of type 'srv1-request"
  "f8e36621b04a3359422e55a9b256fdc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv1-request>)))
  "Returns full string definition for message of type '<srv1-request>"
  (cl:format cl:nil "int8 A~%int8 B~%int8 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv1-request)))
  "Returns full string definition for message of type 'srv1-request"
  (cl:format cl:nil "int8 A~%int8 B~%int8 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv1-request>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'srv1-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
;//! \htmlinclude srv1-response.msg.html

(cl:defclass <srv1-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass srv1-response (<srv1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <srv1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'srv1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name srv_tutorial-srv:<srv1-response> is deprecated: use srv_tutorial-srv:srv1-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <srv1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader srv_tutorial-srv:sum-val is deprecated.  Use srv_tutorial-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <srv1-response>) ostream)
  "Serializes a message object of type '<srv1-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <srv1-response>) istream)
  "Deserializes a message object of type '<srv1-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<srv1-response>)))
  "Returns string type for a service object of type '<srv1-response>"
  "srv_tutorial/srv1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv1-response)))
  "Returns string type for a service object of type 'srv1-response"
  "srv_tutorial/srv1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<srv1-response>)))
  "Returns md5sum for a message object of type '<srv1-response>"
  "f8e36621b04a3359422e55a9b256fdc3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'srv1-response)))
  "Returns md5sum for a message object of type 'srv1-response"
  "f8e36621b04a3359422e55a9b256fdc3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<srv1-response>)))
  "Returns full string definition for message of type '<srv1-response>"
  (cl:format cl:nil "int8 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'srv1-response)))
  "Returns full string definition for message of type 'srv1-response"
  (cl:format cl:nil "int8 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <srv1-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <srv1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'srv1-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'srv1)))
  'srv1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'srv1)))
  'srv1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'srv1)))
  "Returns string type for a service object of type '<srv1>"
  "srv_tutorial/srv1")