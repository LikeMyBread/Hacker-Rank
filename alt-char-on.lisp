(defun read-and-print (lines-length)
  (format t "~D~%" (alt-char (read-line) 0))
  (decf lines-length)
  (if (> lines-length 0)
    (read-and-print lines-length)))

(defun alt-char (word)
  (let (d (deletions 0))
    (loop for c across word do 
        (if (equal c d)
            (incf deletions)
            (setq d c))))
  deletions)

(read-and-print (read))