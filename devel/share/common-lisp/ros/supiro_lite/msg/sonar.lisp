; Auto-generated. Do not edit!


(cl:in-package supiro_lite-msg)


;//! \htmlinclude sonar.msg.html

(cl:defclass <sonar> (roslisp-msg-protocol:ros-message)
  ((servopos
    :reader servopos
    :initarg :servopos
    :type cl:fixnum
    :initform 0)
   (pingval
    :reader pingval
    :initarg :pingval
    :type cl:fixnum
    :initform 0))
)

(cl:defclass sonar (<sonar>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sonar>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sonar)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supiro_lite-msg:<sonar> is deprecated: use supiro_lite-msg:sonar instead.")))

(cl:ensure-generic-function 'servopos-val :lambda-list '(m))
(cl:defmethod servopos-val ((m <sonar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supiro_lite-msg:servopos-val is deprecated.  Use supiro_lite-msg:servopos instead.")
  (servopos m))

(cl:ensure-generic-function 'pingval-val :lambda-list '(m))
(cl:defmethod pingval-val ((m <sonar>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supiro_lite-msg:pingval-val is deprecated.  Use supiro_lite-msg:pingval instead.")
  (pingval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sonar>) ostream)
  "Serializes a message object of type '<sonar>"
  (cl:let* ((signed (cl:slot-value msg 'servopos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pingval)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sonar>) istream)
  "Deserializes a message object of type '<sonar>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servopos) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pingval) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sonar>)))
  "Returns string type for a message object of type '<sonar>"
  "supiro_lite/sonar")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sonar)))
  "Returns string type for a message object of type 'sonar"
  "supiro_lite/sonar")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sonar>)))
  "Returns md5sum for a message object of type '<sonar>"
  "d0f1d004e38a764fd0851cbe630d9906")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sonar)))
  "Returns md5sum for a message object of type 'sonar"
  "d0f1d004e38a764fd0851cbe630d9906")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sonar>)))
  "Returns full string definition for message of type '<sonar>"
  (cl:format cl:nil "int16 servopos~%int16 pingval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sonar)))
  "Returns full string definition for message of type 'sonar"
  (cl:format cl:nil "int16 servopos~%int16 pingval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sonar>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sonar>))
  "Converts a ROS message object to a list"
  (cl:list 'sonar
    (cl:cons ':servopos (servopos msg))
    (cl:cons ':pingval (pingval msg))
))
