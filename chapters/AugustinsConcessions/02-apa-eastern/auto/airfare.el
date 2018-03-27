(TeX-add-style-hook "airfare"
 (lambda ()
    (LaTeX-add-labels
     "ex:range"
     "ex:incomp")
    (TeX-run-style-hooks
     "october"
     ""
     "latex2e"
     "art11"
     "article"
     "11pt")))

