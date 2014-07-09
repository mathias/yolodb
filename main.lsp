(ql:quickload :cl-kyoto-cabinet)

(let ((*db* nil))
  (defun start-db ()
    (defparameter *db* (make-instance kyoto-cabinet::kc-dbm))
    (kyoto-cabinet::dbm-open *db* "/tmp/hello.kch" :create :write))

  (defun put (key val)
    (kyoto-cabinet::dbm-put *db* key val :mode :keep))

  (defun get (key)
    (kyoto-cabinet::dbm-get *db* key)))
