
(cl:in-package :asdf)

(defsystem "vacuum_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "status_msg" :depends-on ("_package_status_msg"))
    (:file "_package_status_msg" :depends-on ("_package"))
  ))