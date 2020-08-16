;; Auto-generated. Do not edit!


(when (boundp 'supiro_lite::encoder)
  (if (not (find-package "SUPIRO_LITE"))
    (make-package "SUPIRO_LITE"))
  (shadow 'encoder (find-package "SUPIRO_LITE")))
(unless (find-package "SUPIRO_LITE::ENCODER")
  (make-package "SUPIRO_LITE::ENCODER"))

(in-package "ROS")
;;//! \htmlinclude encoder.msg.html


(defclass supiro_lite::encoder
  :super ros::object
  :slots (_leftenc _rightenc ))

(defmethod supiro_lite::encoder
  (:init
   (&key
    ((:leftenc __leftenc) 0)
    ((:rightenc __rightenc) 0)
    )
   (send-super :init)
   (setq _leftenc (round __leftenc))
   (setq _rightenc (round __rightenc))
   self)
  (:leftenc
   (&optional __leftenc)
   (if __leftenc (setq _leftenc __leftenc)) _leftenc)
  (:rightenc
   (&optional __rightenc)
   (if __rightenc (setq _rightenc __rightenc)) _rightenc)
  (:serialization-length
   ()
   (+
    ;; int16 _leftenc
    2
    ;; int16 _rightenc
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _leftenc
       (write-word _leftenc s)
     ;; int16 _rightenc
       (write-word _rightenc s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _leftenc
     (setq _leftenc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _rightenc
     (setq _rightenc (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get supiro_lite::encoder :md5sum-) "8c4b5437db1e679395a40f17a7aeba00")
(setf (get supiro_lite::encoder :datatype-) "supiro_lite/encoder")
(setf (get supiro_lite::encoder :definition-)
      "int16 leftenc
int16 rightenc


")



(provide :supiro_lite/encoder "8c4b5437db1e679395a40f17a7aeba00")


