(defun read-and-print (lines-length)
  (format t "~D~%" (utopian-tree 1 (read)))
  (decf lines-length)
  (if (> lines-length 0)
    (read-and-print lines-length)))

(defun utopian-tree (height cycles)
  (if (> cycles 0)
      (progn
        (decf cycles)
        (setq height (* height 2))))
  (if (> cycles 0)
      (progn
        (decf cycles)
        (setq height (+ height 1))))
  (if (> cycles 0)
      (utopian-tree height cycles) height))

(read-and-print (read))