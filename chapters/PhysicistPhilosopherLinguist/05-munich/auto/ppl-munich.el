(TeX-add-style-hook "ppl-munich"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-0861")
    (LaTeX-add-labels
     "eq:e1"
     "eq:e2"
     "eq:e3"
     "eq:e4")
    (TeX-run-style-hooks
     "october"
     ""
     "latex2e"
     "art11"
     "article"
     "11pt")))

