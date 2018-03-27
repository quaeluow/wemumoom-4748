(TeX-add-style-hook "betsy"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-6858")
    (LaTeX-add-labels
     "Introduction"
     "WalleysWorldCupWoes"
     "OtherText"
     "eq:s3")
    (TeX-run-style-hooks
     "october"
     ""
     "latex2e"
     "art11"
     "article"
     "11pt")))

