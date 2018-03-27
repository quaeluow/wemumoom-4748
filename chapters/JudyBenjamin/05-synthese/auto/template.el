(TeX-add-style-hook "template"
 (lambda ()
    (LaTeX-add-environments
     "quotex")
    (LaTeX-add-labels
     "intro"
     "fig:map"
     "sec:1"
     "eq:map"
     "eq:hdq"
     "eq:vmax"
     "fig:unif"
     "fig:mxnt"
     "sec:2"
     "tab:1"
     "sec:3"
     "fig:pwstex1"
     "fig:pwstex2"
     "fig:pwst")
    (TeX-add-symbols
     '("scite" 3)
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
     '("tbd" 1)
     '("kapt" 1)
     "nootag"
     "nias"
     "nial")
    (TeX-run-style-hooks
     "enumerate"
     "xcolor"
     "table"
     "amsmath"
     "amssymb"
     "amsfonts"
     "setspace"
     "graphicx"
     "latex2e"
     "svjour310"
     "svjour3"
     "smallextended"
     "fix-cm")))

