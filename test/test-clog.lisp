(defpackage #:test-clog
  (:use #:cl)
  (:export test-connect on-connect))

(in-package :test-clog)

(defun on-connect (id)
  (format t "Connection ~A is valid? ~A~%" id (clog-connection:validp id))
  (dotimes (n 10)
    (clog-connection:cwrite id "<b>connection-write</b>")
    (clog-connection:cwriteln id "<i>connection-writeln</i>")
    (sleep .2))
  (clog-connection:cwrite id "<br><b>Query Result : </b>")
  (clog-connection:cwrite id (clog-connection:query id "navigator.appVersion"))
  (clog-connection:cwrite id "<hr>simulate network interupt")
  (clog-connection:cclose id)
  (sleep .2)
  (clog-connection:cwrite id "<br><b>reconnected</b>")
  (sleep .2)
  (clog-connection:cwrite id "<br><b>shutting down connection</b>")
  (sleep .2)
  ;; It is generally uneccessary to shutdown the connection
  (clog-connection:shutdown id))

(defun test-connect ()
  (print "Init connection")
  (clog:initialize #'on-connect :boot-file "/debug.html")
  (print "Open browser")
  (clog:open-browser)
)
