(defun add-and-print (lines-length)
  (format t "~D~%" (+ (read) (read)))
  (setq lines-length (- lines-length 1))
  (if (> lines-length 0)
  	(add-and-print lines-length)))

(add-and-print (read))