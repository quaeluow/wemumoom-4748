(TeX-add-style-hook "bibliography"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-3415")
    (TeX-run-style-hooks
     "october"
     "latex2e"
     "art10"
     "article"
     "10pt")))

