;; Auto-generated. Do not edit!


(when (boundp 'action_example::CountdownResult)
  (if (not (find-package "ACTION_EXAMPLE"))
    (make-package "ACTION_EXAMPLE"))
  (shadow 'CountdownResult (find-package "ACTION_EXAMPLE")))
(unless (find-package "ACTION_EXAMPLE::COUNTDOWNRESULT")
  (make-package "ACTION_EXAMPLE::COUNTDOWNRESULT"))

(in-package "ROS")
;;//! \htmlinclude CountdownResult.msg.html


(defclass action_example::CountdownResult
  :super ros::object
  :slots (_finish ))

(defmethod action_example::CountdownResult
  (:init
   (&key
    ((:finish __finish) nil)
    )
   (send-super :init)
   (setq _finish __finish)
   self)
  (:finish
   (&optional __finish)
   (if __finish (setq _finish __finish)) _finish)
  (:serialization-length
   ()
   (+
    ;; bool _finish
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _finish
       (if _finish (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _finish
     (setq _finish (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get action_example::CountdownResult :md5sum-) "474a58dbb494a45bb1ca99544cd64e45")
(setf (get action_example::CountdownResult :datatype-) "action_example/CountdownResult")
(setf (get action_example::CountdownResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#result define
bool finish

")



(provide :action_example/CountdownResult "474a58dbb494a45bb1ca99544cd64e45")

