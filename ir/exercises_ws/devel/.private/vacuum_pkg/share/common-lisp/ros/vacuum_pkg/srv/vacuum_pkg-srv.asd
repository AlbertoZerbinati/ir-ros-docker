
(cl:in-package :asdf)

(defsystem "vacuum_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
               :vacuum_pkg-msg
)
  :components ((:file "_package")
    (:file "status_srv" :depends-on ("_package_status_srv"))
    (:file "_package_status_srv" :depends-on ("_package"))
  ))