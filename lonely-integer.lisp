(defun lonely-integer (integers &optional (num 0))
  (setq num (logxor num (car integers)))
  (setq integers (cdr integers))
  (cond
    (integers (lonely-integer integers num))
    (t num)))


(write (lonely-integer (loop for i from 1 to (read) collect (read))))