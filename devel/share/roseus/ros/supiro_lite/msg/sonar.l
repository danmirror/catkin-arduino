;; Auto-generated. Do not edit!


(when (boundp 'supiro_lite::sonar)
  (if (not (find-package "SUPIRO_LITE"))
    (make-package "SUPIRO_LITE"))
  (shadow 'sonar (find-package "SUPIRO_LITE")))
(unless (find-package "SUPIRO_LITE::SONAR")
  (make-package "SUPIRO_LITE::SONAR"))

(in-package "ROS")
;;//! \htmlinclude sonar.msg.html


(defclass supiro_lite::sonar
  :super ros::object
  :slots (_servopos _pingval ))

(defmethod supiro_lite::sonar
  (:init
   (&key
    ((:servopos __servopos) 0)
    ((:pingval __pingval) 0)
    )
   (send-super :init)
   (setq _servopos (round __servopos))
   (setq _pingval (round __pingval))
   self)
  (:servopos
   (&optional __servopos)
   (if __servopos (setq _servopos __servopos)) _servopos)
  (:pingval
   (&optional __pingval)
   (if __pingval (setq _pingval __pingval)) _pingval)
  (:serialization-length
   ()
   (+
    ;; int16 _servopos
    2
    ;; int16 _pingval
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _servopos
       (write-word _servopos s)
     ;; int16 _pingval
       (write-word _pingval s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _servopos
     (setq _servopos (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _pingval
     (setq _pingval (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get supiro_lite::sonar :md5sum-) "d0f1d004e38a764fd0851cbe630d9906")
(setf (get supiro_lite::sonar :datatype-) "supiro_lite/sonar")
(setf (get supiro_lite::sonar :definition-)
      "int16 servopos
int16 pingval

")



(provide :supiro_lite/sonar "d0f1d004e38a764fd0851cbe630d9906")


