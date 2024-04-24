
(cl:in-package :asdf)

(defsystem "hrs_project-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MoveJoints" :depends-on ("_package_MoveJoints"))
    (:file "_package_MoveJoints" :depends-on ("_package"))
  ))