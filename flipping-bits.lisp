(defun read-and-print (lines-length)
  (format t "~D~%" (flip-bits (read)))
  (setq lines-length (- lines-length 1))
  (if (> lines-length 0)
    (read-and-print lines-length)))

(defun flip-bits (bit)
  (- 4294967295 bit))

(read-and-print (read))