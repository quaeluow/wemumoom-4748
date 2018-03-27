(TeX-add-style-hook "synthese"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-3306")
    (LaTeX-add-labels
     "intro"
     "fig:map"
     "sec:2"
     "eq:map"
     "eq:hdq"
     "eq:vmax"
     "fig:unif"
     "fig:mxnt"
     "sec:3"
     "sec:4"
     "fig:pwstex1"
     "fig:pwstex2"
     "fig:pwst")
    (TeX-run-style-hooks
     "december"
     "latex2e"
     "art12"
     "article"
     "12pt")))

