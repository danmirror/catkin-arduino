;; Auto-generated. Do not edit!


(when (boundp 'supiro_lite::motorpower)
  (if (not (find-package "SUPIRO_LITE"))
    (make-package "SUPIRO_LITE"))
  (shadow 'motorpower (find-package "SUPIRO_LITE")))
(unless (find-package "SUPIRO_LITE::MOTORPOWER")
  (make-package "SUPIRO_LITE::MOTORPOWER"))

(in-package "ROS")
;;//! \htmlinclude motorpower.msg.html


(defclass supiro_lite::motorpower
  :super ros::object
  :slots (_leftpwr _rightpwr _leftdir _rightdir ))

(defmethod supiro_lite::motorpower
  (:init
   (&key
    ((:leftpwr __leftpwr) 0)
    ((:rightpwr __rightpwr) 0)
    ((:leftdir __leftdir) 0)
    ((:rightdir __rightdir) 0)
    )
   (send-super :init)
   (setq _leftpwr (round __leftpwr))
   (setq _rightpwr (round __rightpwr))
   (setq _leftdir (round __leftdir))
   (setq _rightdir (round __rightdir))
   self)
  (:leftpwr
   (&optional __leftpwr)
   (if __leftpwr (setq _leftpwr __leftpwr)) _leftpwr)
  (:rightpwr
   (&optional __rightpwr)
   (if __rightpwr (setq _rightpwr __rightpwr)) _rightpwr)
  (:leftdir
   (&optional __leftdir)
   (if __leftdir (setq _leftdir __leftdir)) _leftdir)
  (:rightdir
   (&optional __rightdir)
   (if __rightdir (setq _rightdir __rightdir)) _rightdir)
  (:serialization-length
   ()
   (+
    ;; int16 _leftpwr
    2
    ;; int16 _rightpwr
    2
    ;; int16 _leftdir
    2
    ;; int16 _rightdir
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _leftpwr
       (write-word _leftpwr s)
     ;; int16 _rightpwr
       (write-word _rightpwr s)
     ;; int16 _leftdir
       (write-word _leftdir s)
     ;; int16 _rightdir
       (write-word _rightdir s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _leftpwr
     (setq _leftpwr (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rightpwr
     (setq _rightpwr (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _leftdir
     (setq _leftdir (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rightdir
     (setq _rightdir (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get supiro_lite::motorpower :md5sum-) "0ec0221cf467c083d5f32af96e0b92dc")
(setf (get supiro_lite::motorpower :datatype-) "supiro_lite/motorpower")
(setf (get supiro_lite::motorpower :definition-)
      "int16 leftpwr
int16 rightpwr
int16 leftdir
int16 rightdir

")



(provide :supiro_lite/motorpower "0ec0221cf467c083d5f32af96e0b92dc")


