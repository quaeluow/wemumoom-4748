(TeX-add-style-hook "hannover"
 (lambda ()
    (LaTeX-add-labels
     "eq:map"
     "eq:hdq")
    (TeX-run-style-hooks
     "colortbl"
     "wrapfig"
     "graphicx"
     "latex2e"
     "beamer10"
     "beamer")))

