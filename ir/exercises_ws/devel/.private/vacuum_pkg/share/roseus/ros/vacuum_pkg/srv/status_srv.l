;; Auto-generated. Do not edit!


(when (boundp 'vacuum_pkg::status_srv)
  (if (not (find-package "VACUUM_PKG"))
    (make-package "VACUUM_PKG"))
  (shadow 'status_srv (find-package "VACUUM_PKG")))
(unless (find-package "VACUUM_PKG::STATUS_SRV")
  (make-package "VACUUM_PKG::STATUS_SRV"))
(unless (find-package "VACUUM_PKG::STATUS_SRVREQUEST")
  (make-package "VACUUM_PKG::STATUS_SRVREQUEST"))
(unless (find-package "VACUUM_PKG::STATUS_SRVRESPONSE")
  (make-package "VACUUM_PKG::STATUS_SRVRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vacuum_pkg::status_srvRequest
  :super ros::object
  :slots (_header _ID ))

(defmethod vacuum_pkg::status_srvRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:ID __ID) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _ID (string __ID))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _ID
    4 (length _ID)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _ID
       (write-long (length _ID) s) (princ _ID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _ID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vacuum_pkg::status_srvResponse
  :super ros::object
  :slots (_header _status ))

(defmethod vacuum_pkg::status_srvResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) (instance vacuum_pkg::status_msg :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _status __status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vacuum_pkg/status_msg _status
    (send _status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vacuum_pkg/status_msg _status
       (send _status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vacuum_pkg/status_msg _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;;
   self)
  )

(defclass vacuum_pkg::status_srv
  :super ros::object
  :slots ())

(setf (get vacuum_pkg::status_srv :md5sum-) "3718bc835b72cc299bc62d56555ebaea")
(setf (get vacuum_pkg::status_srv :datatype-) "vacuum_pkg/status_srv")
(setf (get vacuum_pkg::status_srv :request) vacuum_pkg::status_srvRequest)
(setf (get vacuum_pkg::status_srv :response) vacuum_pkg::status_srvResponse)

(defmethod vacuum_pkg::status_srvRequest
  (:response () (instance vacuum_pkg::status_srvResponse :init)))

(setf (get vacuum_pkg::status_srvRequest :md5sum-) "3718bc835b72cc299bc62d56555ebaea")
(setf (get vacuum_pkg::status_srvRequest :datatype-) "vacuum_pkg/status_srvRequest")
(setf (get vacuum_pkg::status_srvRequest :definition-)
      "Header header
string ID

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
Header header
status_msg status # include the msg status defined in the package

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: vacuum_pkg/status_msg
string ROOM_ID
string ROOM_NAME
float32 BATTERY
")

(setf (get vacuum_pkg::status_srvResponse :md5sum-) "3718bc835b72cc299bc62d56555ebaea")
(setf (get vacuum_pkg::status_srvResponse :datatype-) "vacuum_pkg/status_srvResponse")
(setf (get vacuum_pkg::status_srvResponse :definition-)
      "Header header
string ID

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
Header header
status_msg status # include the msg status defined in the package

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: vacuum_pkg/status_msg
string ROOM_ID
string ROOM_NAME
float32 BATTERY
")



(provide :vacuum_pkg/status_srv "3718bc835b72cc299bc62d56555ebaea")


