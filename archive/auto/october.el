(TeX-add-style-hook
 "october"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("amsmath" "fleqn") ("geometry" "pdftex") ("natbib" "round") ("xcolor" "table")))
   (TeX-run-style-hooks
    "amsfonts"
    "amssymb"
    "enumerate"
    "amsmath"
    "graphicx"
    "lineno"
    "geometry"
    "natbib"
    "setspace"
    "xcolor")
   (TeX-add-symbols
    '("scite" 3)
    '("fixref" 3)
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
    '("beispiel" 1)
    '("tbd" 1)
    '("lcut" 1)
    '("mcut" 1)
    '("bcut" 1)
    '("fcut" 1)
    '("qzwei" 1)
    '("qeins" 1)
    '("doxnotep" 0)
    '("qnull" 1)
    '("augustin" 0)
    '("anderson" 0)
    "nias"
    "nial"
    "xample"
    "Xample"
    "igure"
    "Igure"
    "PageP")
   (LaTeX-add-environments
    "quotex")
   (LaTeX-add-counters
    "expls")))

