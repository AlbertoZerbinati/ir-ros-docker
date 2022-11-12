; Auto-generated. Do not edit!


(cl:in-package vacuum_pkg-srv)


;//! \htmlinclude status_srv-request.msg.html

(cl:defclass <status_srv-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ID
    :reader ID
    :initarg :ID
    :type cl:string
    :initform ""))
)

(cl:defclass status_srv-request (<status_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <status_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'status_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vacuum_pkg-srv:<status_srv-request> is deprecated: use vacuum_pkg-srv:status_srv-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <status_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_pkg-srv:header-val is deprecated.  Use vacuum_pkg-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <status_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_pkg-srv:ID-val is deprecated.  Use vacuum_pkg-srv:ID instead.")
  (ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <status_srv-request>) ostream)
  "Serializes a message object of type '<status_srv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ID))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ID))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <status_srv-request>) istream)
  "Deserializes a message object of type '<status_srv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ID) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ID) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<status_srv-request>)))
  "Returns string type for a service object of type '<status_srv-request>"
  "vacuum_pkg/status_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'status_srv-request)))
  "Returns string type for a service object of type 'status_srv-request"
  "vacuum_pkg/status_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<status_srv-request>)))
  "Returns md5sum for a message object of type '<status_srv-request>"
  "3718bc835b72cc299bc62d56555ebaea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'status_srv-request)))
  "Returns md5sum for a message object of type 'status_srv-request"
  "3718bc835b72cc299bc62d56555ebaea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<status_srv-request>)))
  "Returns full string definition for message of type '<status_srv-request>"
  (cl:format cl:nil "Header header~%string ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'status_srv-request)))
  "Returns full string definition for message of type 'status_srv-request"
  (cl:format cl:nil "Header header~%string ID~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <status_srv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'ID))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <status_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'status_srv-request
    (cl:cons ':header (header msg))
    (cl:cons ':ID (ID msg))
))
;//! \htmlinclude status_srv-response.msg.html

(cl:defclass <status_srv-response> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type vacuum_pkg-msg:status_msg
    :initform (cl:make-instance 'vacuum_pkg-msg:status_msg)))
)

(cl:defclass status_srv-response (<status_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <status_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'status_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vacuum_pkg-srv:<status_srv-response> is deprecated: use vacuum_pkg-srv:status_srv-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <status_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_pkg-srv:header-val is deprecated.  Use vacuum_pkg-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <status_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vacuum_pkg-srv:status-val is deprecated.  Use vacuum_pkg-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <status_srv-response>) ostream)
  "Serializes a message object of type '<status_srv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <status_srv-response>) istream)
  "Deserializes a message object of type '<status_srv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<status_srv-response>)))
  "Returns string type for a service object of type '<status_srv-response>"
  "vacuum_pkg/status_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'status_srv-response)))
  "Returns string type for a service object of type 'status_srv-response"
  "vacuum_pkg/status_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<status_srv-response>)))
  "Returns md5sum for a message object of type '<status_srv-response>"
  "3718bc835b72cc299bc62d56555ebaea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'status_srv-response)))
  "Returns md5sum for a message object of type 'status_srv-response"
  "3718bc835b72cc299bc62d56555ebaea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<status_srv-response>)))
  "Returns full string definition for message of type '<status_srv-response>"
  (cl:format cl:nil "Header header~%status_msg status # include the msg status defined in the package~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vacuum_pkg/status_msg~%string ROOM_ID~%string ROOM_NAME~%float32 BATTERY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'status_srv-response)))
  "Returns full string definition for message of type 'status_srv-response"
  (cl:format cl:nil "Header header~%status_msg status # include the msg status defined in the package~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vacuum_pkg/status_msg~%string ROOM_ID~%string ROOM_NAME~%float32 BATTERY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <status_srv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <status_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'status_srv-response
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'status_srv)))
  'status_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'status_srv)))
  'status_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'status_srv)))
  "Returns string type for a service object of type '<status_srv>"
  "vacuum_pkg/status_srv")