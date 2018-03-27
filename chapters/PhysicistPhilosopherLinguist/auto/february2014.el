(TeX-add-style-hook "february2014"
 (lambda ()
    (LaTeX-add-labels
     "eq:e1"
     "eq:e2"
     "eq:e3")
    (TeX-run-style-hooks
     "enumerate"
     "graphicx"
     "xcolor"
     "table"
     "amsmath"
     "amssymb"
     "amsfonts"
     "setspace"
     ""
     "latex2e"
     "art11"
     "article"
     "11pt")))

