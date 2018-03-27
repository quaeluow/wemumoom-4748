(TeX-add-style-hook "december"
 (lambda ()
    (LaTeX-add-environments
     "quotex")
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
     "round"
     "natbib"
     "numbers"
     "colon"
     "enumerate"
     "xcolor"
     "table"
     "titlesec"
     "caption"
     "small"
     "bf"
     "amsmath"
     "amssymb"
     "amsfonts"
     "graphicx")))

 "")))

