(defun read-and-print (lines-length)
  (format t "~D~%" (alt-char (read-line)))
  (decf lines-length)
  (if (> lines-length 0)
    (read-and-print lines-length)))

(defun alt-char (word deletions)
  (let (doubles)
    (setq doubles (find-double word))
    (loop while doubles do
          (incf deletions)
          (setq word (concatenate 'string (subseq word 0 doubles) (subseq word (+ 1 doubles))))
          (setq doubles (find-double word))))
  deletions)

(defun find-double (word)
  (let (c)
      (loop for i from 0 to (- (length word) 1) do
            (if (equal c (char word i))
                (return i))
            (setq c (char word i)))))

(read-and-print (read))