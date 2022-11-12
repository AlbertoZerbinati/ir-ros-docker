;; Auto-generated. Do not edit!


(when (boundp 'vacuum_pkg::status_msg)
  (if (not (find-package "VACUUM_PKG"))
    (make-package "VACUUM_PKG"))
  (shadow 'status_msg (find-package "VACUUM_PKG")))
(unless (find-package "VACUUM_PKG::STATUS_MSG")
  (make-package "VACUUM_PKG::STATUS_MSG"))

(in-package "ROS")
;;//! \htmlinclude status_msg.msg.html


(defclass vacuum_pkg::status_msg
  :super ros::object
  :slots (_ROOM_ID _ROOM_NAME _BATTERY ))

(defmethod vacuum_pkg::status_msg
  (:init
   (&key
    ((:ROOM_ID __ROOM_ID) "")
    ((:ROOM_NAME __ROOM_NAME) "")
    ((:BATTERY __BATTERY) 0.0)
    )
   (send-super :init)
   (setq _ROOM_ID (string __ROOM_ID))
   (setq _ROOM_NAME (string __ROOM_NAME))
   (setq _BATTERY (float __BATTERY))
   self)
  (:ROOM_ID
   (&optional __ROOM_ID)
   (if __ROOM_ID (setq _ROOM_ID __ROOM_ID)) _ROOM_ID)
  (:ROOM_NAME
   (&optional __ROOM_NAME)
   (if __ROOM_NAME (setq _ROOM_NAME __ROOM_NAME)) _ROOM_NAME)
  (:BATTERY
   (&optional __BATTERY)
   (if __BATTERY (setq _BATTERY __BATTERY)) _BATTERY)
  (:serialization-length
   ()
   (+
    ;; string _ROOM_ID
    4 (length _ROOM_ID)
    ;; string _ROOM_NAME
    4 (length _ROOM_NAME)
    ;; float32 _BATTERY
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ROOM_ID
       (write-long (length _ROOM_ID) s) (princ _ROOM_ID s)
     ;; string _ROOM_NAME
       (write-long (length _ROOM_NAME) s) (princ _ROOM_NAME s)
     ;; float32 _BATTERY
       (sys::poke _BATTERY (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ROOM_ID
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ROOM_ID (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ROOM_NAME
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ROOM_NAME (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _BATTERY
     (setq _BATTERY (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get vacuum_pkg::status_msg :md5sum-) "131a6d89e159ae530e7a3b57e773cde5")
(setf (get vacuum_pkg::status_msg :datatype-) "vacuum_pkg/status_msg")
(setf (get vacuum_pkg::status_msg :definition-)
      "string ROOM_ID
string ROOM_NAME
float32 BATTERY

")



(provide :vacuum_pkg/status_msg "131a6d89e159ae530e7a3b57e773cde5")


