(TeX-add-style-hook "judy"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-3306")
    (LaTeX-add-labels
     "Introduction"
     "fig:aff"
     "fig:map"
     "TwoIntuitions"
     "eq:map"
     "eq:hdq"
     "eq:vmax"
     "fig:unif"
     "fig:mxnt"
     "epent"
     "powerset"
     "fig:pwstex1"
     "fig:pwstex2"
     "fig:pwst"
     "References")
    (TeX-run-style-hooks
     "october"
     "latex2e"
     "art11"
     "article"
     "11pt")))

