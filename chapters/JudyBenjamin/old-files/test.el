(defun stefan-test (nameOfFile xmax ymax) ;; written 2009-10-31
  "Create a template asy files with an invisible coordinate system."
  (interactive "FEnter the name of the asy file: \nnEnter the maximum x coordinate (<100): \nnEnter the maximum y coordinate (<100): ")
  (save-excursion
   (with-temp-buffer
(insert "size(600pt,600pt);")
(newline-and-indent)
(insert nameOfFile)
     (when (file-writable-p nameOfFile)
       (write-region (point-min)
                     (point-max)
                     nameOfFile))))
)

