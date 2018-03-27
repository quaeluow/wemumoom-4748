(TeX-add-style-hook "jeco-epsa"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-2902")
    (TeX-run-style-hooks
     "october"
     ""
     "latex2e"
     "art11"
     "article"
     "11pt")))

