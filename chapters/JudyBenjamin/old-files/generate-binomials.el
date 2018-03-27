(defun chs (n k)
  "The binomial coefficient."
  (if (or (= k 0) (= k n)) 1
    (+ (nck (- n 1) (- k 1)) (nck (- n 1) k))))

(defun fac (integer)
  "Compute factorial of an integer."
  (if (= 1 integer) 1
    (* integer (factorial (1- integer)))))

(defun stefan-generate-binomials (nameOfFile n p) ;; written 2011-06-30
  "Generate binomial distribution given n and p."
  (interactive "FEnter the name of the output file: \nnEnter n: \nnEnter p: ")
  (save-excursion
   (with-temp-buffer
(setq i1 0)
(while (<= i1 n)
(setq bin (* (expt p i1) (expt (- 1 p) (- n i1))))
(setq Fbin (number-to-string (/ (round (* bin 100)) 100.0)))
(setq mult (* bin (chs n i1)))
(setq Fmult (number-to-string (/ (round (* mult 100)) 100.0)))
(insert (concat (number-to-string n) " choose " (number-to-string i1) " = " (format "%-6d" (chs n i1)) " p^" (number-to-string i1) "*q^" (number-to-string (- n i1)) " = " Fbin " " Fmult))
(newline-and-indent)
  (setq i1 (+ i1 1)))
     (when (file-writable-p nameOfFile)
       (write-region (point-min)
                     (point-max)
                     nameOfFile)))))
