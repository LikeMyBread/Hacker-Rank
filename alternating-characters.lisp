(defun read-and-print (lines-length)
  (format t "~D~%" (alt-char (read-line) 0))
  (decf lines-length)
  (if (> lines-length 0)
    (read-and-print lines-length)))

(defun alt-char (word deletions)
  (let (doubles)
    (setq doubles (find-double word))
    (if (not doubles)
        (return-from alt-char deletions))
    (setq deletions (+ 1 deletions (alt-char (concatenate 'string (subseq word 0 doubles) (subseq word (+ 1 doubles))) deletions)))))

(defun find-double (word)
  (let (c)
      (loop for i from 0 to (- (length word) 1) do
            (if (equal c (char word i))
                (return i))
            (setq c (char word i)))))

(read-and-print (read))