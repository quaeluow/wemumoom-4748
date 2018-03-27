(TeX-add-style-hook "naohito"
 (lambda ()
    (LaTeX-add-labels
     "eq:e1"
     "eq:e2"
     "eq:e3"
     "eq:e4"
     "eq:e5"
     "eq:e6"
     "eq:e7"
     "eq:e8"
     "eq:e72"
     "eq:e71"
     "eq:e9")
    (TeX-add-symbols
     "R"
     "C"
     "N"
     "Q"
     "Z"
     "PP")
    (TeX-run-style-hooks
     "amsmath"
     "fleqn"
     "amssymb"
     "amsfonts"
     "latex2e"
     "art10"
     "article"
     "landscape"
     "10pt")))

