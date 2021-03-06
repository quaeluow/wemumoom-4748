(TeX-add-style-hook "october"
 (lambda ()
    (LaTeX-add-environments
     "quotex")
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
     "PageP"
     "nias"
     "nial"
     "oldmarginpar")
    (TeX-run-style-hooks
     "round"
     "natbib"
     "numbers"
     "colon"
     "enumerate"
     "graphicx"
     "xcolor"
     "table"
     "amsmath"
     "amssymb"
     "amsfonts"
     "setspace")))

