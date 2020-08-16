
(cl:in-package :asdf)

(defsystem "supiro_lite-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "encoder" :depends-on ("_package_encoder"))
    (:file "_package_encoder" :depends-on ("_package"))
    (:file "motorpower" :depends-on ("_package_motorpower"))
    (:file "_package_motorpower" :depends-on ("_package"))
    (:file "sonar" :depends-on ("_package_sonar"))
    (:file "_package_sonar" :depends-on ("_package"))
  ))