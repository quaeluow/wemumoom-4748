(TeX-add-style-hook "synthese-revised-4"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-3306")
    (LaTeX-add-environments
     "quotex")
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
    (TeX-add-symbols
     '("scite" 3)
     '("qvu" 0)
     '("lwv" 0)
     '("wden" 0)
     '("kden" 0)
     '("hden" 0)
     '("cden" 0)
     '("bden" 0)
     '("aden" 0)
     '("wnum" 0)
     '("knum" 0)
     '("hnum" 0)
     '("cnum" 0)
     '("bnum" 0)
     '("anum" 0)
     '("erf" 0)
     '("qzwei" 1)
     '("qeins" 1)
     '("qnull" 1)
     '("nonsc" 1)
     "nias"
     "nial"
     "PageP")
    (TeX-run-style-hooks
     "enumerate"
     "xcolor"
     "table"
     "amsmath"
     "amssymb"
     "amsfonts"
     "graphicx"
     "latex2e"
     "svjour310"
     "svjour3"
     "smallextended"
     "fix-cm"
     "")))

