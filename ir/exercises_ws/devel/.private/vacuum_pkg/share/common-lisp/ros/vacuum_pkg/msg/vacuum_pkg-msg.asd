
(cl:in-package :asdf)

(defsystem "vacuum_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "StatusAction" :depends-on ("_package_StatusAction"))
    (:file "_package_StatusAction" :depends-on ("_package"))
    (:file "StatusActionFeedback" :depends-on ("_package_StatusActionFeedback"))
    (:file "_package_StatusActionFeedback" :depends-on ("_package"))
    (:file "StatusActionGoal" :depends-on ("_package_StatusActionGoal"))
    (:file "_package_StatusActionGoal" :depends-on ("_package"))
    (:file "StatusActionResult" :depends-on ("_package_StatusActionResult"))
    (:file "_package_StatusActionResult" :depends-on ("_package"))
    (:file "StatusFeedback" :depends-on ("_package_StatusFeedback"))
    (:file "_package_StatusFeedback" :depends-on ("_package"))
    (:file "StatusGoal" :depends-on ("_package_StatusGoal"))
    (:file "_package_StatusGoal" :depends-on ("_package"))
    (:file "StatusResult" :depends-on ("_package_StatusResult"))
    (:file "_package_StatusResult" :depends-on ("_package"))
    (:file "status_msg" :depends-on ("_package_status_msg"))
    (:file "_package_status_msg" :depends-on ("_package"))
  ))