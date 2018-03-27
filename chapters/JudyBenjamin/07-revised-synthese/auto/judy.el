(TeX-add-style-hook
 "judy"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "december")
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
    "JaynesConstraintRule"
    "eq:constraint"
    "eq:unity"
    "eq:entropy"
    "eq:functional"
    "eq:funder"
    "eq:coverthomas"
    "eq:l1"
    "eq:zet"
    "eq:l0"
    "eq:logcon"
    "eq:unishow"
    "ThePowersetApproachFormalized"
    "eq:den"
    "eq:num")
   (LaTeX-add-bibliographies
    "bib-3306")))

