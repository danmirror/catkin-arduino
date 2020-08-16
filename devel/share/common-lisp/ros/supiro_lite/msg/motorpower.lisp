; Auto-generated. Do not edit!


(cl:in-package supiro_lite-msg)


;//! \htmlinclude motorpower.msg.html

(cl:defclass <motorpower> (roslisp-msg-protocol:ros-message)
  ((leftpwr
    :reader leftpwr
    :initarg :leftpwr
    :type cl:fixnum
    :initform 0)
   (rightpwr
    :reader rightpwr
    :initarg :rightpwr
    :type cl:fixnum
    :initform 0)
   (leftdir
    :reader leftdir
    :initarg :leftdir
    :type cl:fixnum
    :initform 0)
   (rightdir
    :reader rightdir
    :initarg :rightdir
    :type cl:fixnum
    :initform 0))
)

(cl:defclass motorpower (<motorpower>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motorpower>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motorpower)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name supiro_lite-msg:<motorpower> is deprecated: use supiro_lite-msg:motorpower instead.")))

(cl:ensure-generic-function 'leftpwr-val :lambda-list '(m))
(cl:defmethod leftpwr-val ((m <motorpower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supiro_lite-msg:leftpwr-val is deprecated.  Use supiro_lite-msg:leftpwr instead.")
  (leftpwr m))

(cl:ensure-generic-function 'rightpwr-val :lambda-list '(m))
(cl:defmethod rightpwr-val ((m <motorpower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supiro_lite-msg:rightpwr-val is deprecated.  Use supiro_lite-msg:rightpwr instead.")
  (rightpwr m))

(cl:ensure-generic-function 'leftdir-val :lambda-list '(m))
(cl:defmethod leftdir-val ((m <motorpower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supiro_lite-msg:leftdir-val is deprecated.  Use supiro_lite-msg:leftdir instead.")
  (leftdir m))

(cl:ensure-generic-function 'rightdir-val :lambda-list '(m))
(cl:defmethod rightdir-val ((m <motorpower>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader supiro_lite-msg:rightdir-val is deprecated.  Use supiro_lite-msg:rightdir instead.")
  (rightdir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motorpower>) ostream)
  "Serializes a message object of type '<motorpower>"
  (cl:let* ((signed (cl:slot-value msg 'leftpwr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightpwr)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'leftdir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'rightdir)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motorpower>) istream)
  "Deserializes a message object of type '<motorpower>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftpwr) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightpwr) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'leftdir) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rightdir) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motorpower>)))
  "Returns string type for a message object of type '<motorpower>"
  "supiro_lite/motorpower")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motorpower)))
  "Returns string type for a message object of type 'motorpower"
  "supiro_lite/motorpower")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motorpower>)))
  "Returns md5sum for a message object of type '<motorpower>"
  "0ec0221cf467c083d5f32af96e0b92dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motorpower)))
  "Returns md5sum for a message object of type 'motorpower"
  "0ec0221cf467c083d5f32af96e0b92dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motorpower>)))
  "Returns full string definition for message of type '<motorpower>"
  (cl:format cl:nil "int16 leftpwr~%int16 rightpwr~%int16 leftdir~%int16 rightdir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motorpower)))
  "Returns full string definition for message of type 'motorpower"
  (cl:format cl:nil "int16 leftpwr~%int16 rightpwr~%int16 leftdir~%int16 rightdir~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motorpower>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motorpower>))
  "Converts a ROS message object to a list"
  (cl:list 'motorpower
    (cl:cons ':leftpwr (leftpwr msg))
    (cl:cons ':rightpwr (rightpwr msg))
    (cl:cons ':leftdir (leftdir msg))
    (cl:cons ':rightdir (rightdir msg))
))
