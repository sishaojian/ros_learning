
(cl:in-package :asdf)

(defsystem "action_example-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CountdownAction" :depends-on ("_package_CountdownAction"))
    (:file "_package_CountdownAction" :depends-on ("_package"))
    (:file "CountdownActionFeedback" :depends-on ("_package_CountdownActionFeedback"))
    (:file "_package_CountdownActionFeedback" :depends-on ("_package"))
    (:file "CountdownActionGoal" :depends-on ("_package_CountdownActionGoal"))
    (:file "_package_CountdownActionGoal" :depends-on ("_package"))
    (:file "CountdownActionResult" :depends-on ("_package_CountdownActionResult"))
    (:file "_package_CountdownActionResult" :depends-on ("_package"))
    (:file "CountdownFeedback" :depends-on ("_package_CountdownFeedback"))
    (:file "_package_CountdownFeedback" :depends-on ("_package"))
    (:file "CountdownGoal" :depends-on ("_package_CountdownGoal"))
    (:file "_package_CountdownGoal" :depends-on ("_package"))
    (:file "CountdownResult" :depends-on ("_package_CountdownResult"))
    (:file "_package_CountdownResult" :depends-on ("_package"))
  ))