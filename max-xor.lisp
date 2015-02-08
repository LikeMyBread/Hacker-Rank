(defun max-xor (l r)
  (defparameter highest (logxor l r))
  (loop for i from l to r do
        (loop for j from l to r do
              (setq highest (max highest (logxor i j)))))
  highest)

(format t "~D~%" (max-xor (read) (read)))