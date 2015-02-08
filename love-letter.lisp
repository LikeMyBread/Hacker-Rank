(defun read-and-print (lines-length)
  (format t "~D~%" (count-dromes (read-line)))
  (decf lines-length)
  (if (> lines-length 0)
    (read-and-print lines-length)))

(defun count-dromes (word)
  (let ((total 0))
    (loop for i from 0 to (- (floor (length word) 2) 1) do
          (incf total (abs (- (char-code (char word i)) 
                              (char-code (char word (- (length word) (+ 1 i))))))))
    total))

(read-and-print (read))