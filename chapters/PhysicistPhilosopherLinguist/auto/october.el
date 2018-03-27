(TeX-add-style-hook "october"
 (lambda ()
    (LaTeX-add-environments
     "quotex")
    (TeX-add-symbols
     '("scite" 3)
     '("mthree" 0)
     '("Kantian" 0)
     '("kantian" 0)
     '("tr" 1)
     '("tbd" 1)
     '("qzwei" 1)
     '("qeins" 1)
     '("qnull" 1)
     "nias"
     "nial"
     "PageP"
     "oldmarginpar")
    (TeX-run-style-hooks
     "round"
     "natbib"
     "colon"
     "numbers"
     "titlesec"
     "enumerate"
     "graphicx"
     "xcolor"
     "table"
     "amsmath"
     "fleqn"
     "amssymb"
     "amsfonts"
     "setspace"
     ""
     "caption"
     "bf"
     "small")))

