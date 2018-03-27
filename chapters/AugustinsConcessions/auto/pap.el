(TeX-add-style-hook "pap"
 (lambda ()
    (LaTeX-add-labels
     "eq:m1")
    (TeX-add-symbols
     "oldmarginpar")
    (TeX-run-style-hooks
     "amssymb"
     "amsfonts"
     ""
     "latex2e"
     "art11"
     "article"
     "11pt")))

