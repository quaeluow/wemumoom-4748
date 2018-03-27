(TeX-add-style-hook "m1615"
 (lambda ()
    (LaTeX-add-labels
     "eq:eins"
     "eq:zwei"
     "eq:drei"
     "eq:vier"
     "eq:fuenf"
     "eq:sechs"
     "eq:sieben")
    (TeX-add-symbols
     "R"
     "C"
     "N"
     "Q"
     "Z"
     "PP")
    (TeX-run-style-hooks
     "amssymb"
     "amsfonts"
     "latex2e"
     "art11"
     "article"
     "11pt")))

