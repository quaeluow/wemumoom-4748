(TeX-add-style-hook "sonk-apa-eastern"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-7293")
    (LaTeX-add-labels
     "Introduction"
     "ex:range"
     "ex:incomp"
     "AugustinsConcessions"
     "ex:dilation"
     "eq:d1"
     "eq:d2"
     "eq:d3"
     "ex:obtuse"
     "jj1"
     "ex:die"
     "jj2"
     "TheDoubleTask"
     "ex:aggreg"
     "ex:preccre"
     "ex:monkey")
    (TeX-run-style-hooks
     "october"
     ""
     "latex2e"
     "art11"
     "article"
     "11pt")))

