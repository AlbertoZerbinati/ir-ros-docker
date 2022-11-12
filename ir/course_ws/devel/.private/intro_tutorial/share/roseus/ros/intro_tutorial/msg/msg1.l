;; Auto-generated. Do not edit!


(when (boundp 'intro_tutorial::msg1)
  (if (not (find-package "INTRO_TUTORIAL"))
    (make-package "INTRO_TUTORIAL"))
  (shadow 'msg1 (find-package "INTRO_TUTORIAL")))
(unless (find-package "INTRO_TUTORIAL::MSG1")
  (make-package "INTRO_TUTORIAL::MSG1"))

(in-package "ROS")
;;//! \htmlinclude msg1.msg.html


(defclass intro_tutorial::msg1
  :super ros::object
  :slots (_A _B _C ))

(defmethod intro_tutorial::msg1
  (:init
   (&key
    ((:A __A) 0)
    ((:B __B) 0)
    ((:C __C) "")
    )
   (send-super :init)
   (setq _A (round __A))
   (setq _B (round __B))
   (setq _C (string __C))
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
    ;; int32 _A
    4
    ;; int32 _B
    4
    ;; string _C
    4 (length _C)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _A
       (write-long _A s)
     ;; int32 _B
       (write-long _B s)
     ;; string _C
       (write-long (length _C) s) (princ _C s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _A
     (setq _A (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _B
     (setq _B (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _C
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _C (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get intro_tutorial::msg1 :md5sum-) "9660119d8b929d1f29ca833ea8ed329f")
(setf (get intro_tutorial::msg1 :datatype-) "intro_tutorial/msg1")
(setf (get intro_tutorial::msg1 :definition-)
      "int32 A
int32 B
string C
")



(provide :intro_tutorial/msg1 "9660119d8b929d1f29ca833ea8ed329f")


