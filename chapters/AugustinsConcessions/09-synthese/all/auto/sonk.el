(TeX-add-style-hook
 "sonk"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "october"
    "lineno")
   (TeX-add-symbols
    '("pubcut" 1)
    '("augustin" 0)
    '("anderson" 0)))
 :latex)

