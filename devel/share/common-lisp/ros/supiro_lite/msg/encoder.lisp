; Auto-generated. Do not edit!


(cl:in-package supiro_lite-msg)


;//! \htmlinclude encoder.msg.html

(cl:defclass <encoder> (roslisp-msg-protocol:ros-message)
  ((leftenc
    :reader leftenc
    :initarg :leftenc
    :type cl:fixnum
    :initform 0)
   (rightenc
    :reader rightenc
    :initarg :rightenc
    :type cl:fixnum
    :initform 0))
)

(cl:defclass encoder (<encoder>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <encoder>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'encoder)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supiro_lite-msg:<encoder> is deprecated: use supiro_lite-msg:encoder instead.")))

(cl:ensure-generic-function 'leftenc-val :lambda-list '(m))
(cl:defmethod leftenc-val ((m <encoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supiro_lite-msg:leftenc-val is deprecated.  Use supiro_lite-msg:leftenc instead.")
  (leftenc m))

(cl:ensure-generic-function 'rightenc-val :lambda-list '(m))
(cl:defmethod rightenc-val ((m <encoder>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supiro_lite-msg:rightenc-val is deprecated.  Use supiro_lite-msg:rightenc instead.")
  (rightenc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <encoder>) ostream)
  "Serializes a message object of type '<encoder>"
  (cl:let* ((signed (cl:slot-value msg 'leftenc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightenc)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <encoder>) istream)
  "Deserializes a message object of type '<encoder>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftenc) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightenc) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<encoder>)))
  "Returns string type for a message object of type '<encoder>"
  "supiro_lite/encoder")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'encoder)))
  "Returns string type for a message object of type 'encoder"
  "supiro_lite/encoder")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<encoder>)))
  "Returns md5sum for a message object of type '<encoder>"
  "8c4b5437db1e679395a40f17a7aeba00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'encoder)))
  "Returns md5sum for a message object of type 'encoder"
  "8c4b5437db1e679395a40f17a7aeba00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<encoder>)))
  "Returns full string definition for message of type '<encoder>"
  (cl:format cl:nil "int16 leftenc~%int16 rightenc~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'encoder)))
  "Returns full string definition for message of type 'encoder"
  (cl:format cl:nil "int16 leftenc~%int16 rightenc~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <encoder>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <encoder>))
  "Converts a ROS message object to a list"
  (cl:list 'encoder
    (cl:cons ':leftenc (leftenc msg))
    (cl:cons ':rightenc (rightenc msg))
))
