;; Auto-generated. Do not edit!


(when (boundp 'srv_tutorial::srv1)
  (if (not (find-package "SRV_TUTORIAL"))
    (make-package "SRV_TUTORIAL"))
  (shadow 'srv1 (find-package "SRV_TUTORIAL")))
(unless (find-package "SRV_TUTORIAL::SRV1")
  (make-package "SRV_TUTORIAL::SRV1"))
(unless (find-package "SRV_TUTORIAL::SRV1REQUEST")
  (make-package "SRV_TUTORIAL::SRV1REQUEST"))
(unless (find-package "SRV_TUTORIAL::SRV1RESPONSE")
  (make-package "SRV_TUTORIAL::SRV1RESPONSE"))

(in-package "ROS")





(defclass srv_tutorial::srv1Request
  :super ros::object
  :slots (_A _B _C ))

(defmethod srv_tutorial::srv1Request
  (:init
   (&key
    ((:A __A) 0)
    ((:B __B) 0)
    ((:C __C) 0)
    )
   (send-super :init)
   (setq _A (round __A))
   (setq _B (round __B))
   (setq _C (round __C))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:C
   (&optional __C)
   (if __C (setq _C __C)) _C)
  (:serialization-length
   ()
   (+
    ;; int8 _A
    1
    ;; int8 _B
    1
    ;; int8 _C
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _A
       (write-byte _A s)
     ;; int8 _B
       (write-byte _B s)
     ;; int8 _C
       (write-byte _C s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _A
     (setq _A (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _A 127) (setq _A (- _A 256)))
   ;; int8 _B
     (setq _B (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _B 127) (setq _B (- _B 256)))
   ;; int8 _C
     (setq _C (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _C 127) (setq _C (- _C 256)))
   ;;
   self)
  )

(defclass srv_tutorial::srv1Response
  :super ros::object
  :slots (_sum ))

(defmethod srv_tutorial::srv1Response
  (:init
   (&key
    ((:sum __sum) 0)
    )
   (send-super :init)
   (setq _sum (round __sum))
   self)
  (:sum
   (&optional __sum)
   (if __sum (setq _sum __sum)) _sum)
  (:serialization-length
   ()
   (+
    ;; int8 _sum
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _sum
       (write-byte _sum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _sum
     (setq _sum (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sum 127) (setq _sum (- _sum 256)))
   ;;
   self)
  )

(defclass srv_tutorial::srv1
  :super ros::object
  :slots ())

(setf (get srv_tutorial::srv1 :md5sum-) "f8e36621b04a3359422e55a9b256fdc3")
(setf (get srv_tutorial::srv1 :datatype-) "srv_tutorial/srv1")
(setf (get srv_tutorial::srv1 :request) srv_tutorial::srv1Request)
(setf (get srv_tutorial::srv1 :response) srv_tutorial::srv1Response)

(defmethod srv_tutorial::srv1Request
  (:response () (instance srv_tutorial::srv1Response :init)))

(setf (get srv_tutorial::srv1Request :md5sum-) "f8e36621b04a3359422e55a9b256fdc3")
(setf (get srv_tutorial::srv1Request :datatype-) "srv_tutorial/srv1Request")
(setf (get srv_tutorial::srv1Request :definition-)
      "int8 A
int8 B
int8 C
---
int8 sum
")

(setf (get srv_tutorial::srv1Response :md5sum-) "f8e36621b04a3359422e55a9b256fdc3")
(setf (get srv_tutorial::srv1Response :datatype-) "srv_tutorial/srv1Response")
(setf (get srv_tutorial::srv1Response :definition-)
      "int8 A
int8 B
int8 C
---
int8 sum
")



(provide :srv_tutorial/srv1 "f8e36621b04a3359422e55a9b256fdc3")


