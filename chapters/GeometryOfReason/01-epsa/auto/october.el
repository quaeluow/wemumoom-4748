(TeX-add-style-hook "october"
 (lambda ()
    (LaTeX-add-environments
     "quotex")
    (TeX-add-symbols
     '("scite" 3)
     '("fixref" 3)
     '("tbd" 1)
     '("fcut" 1)
     '("qzwei" 1)
     '("qeins" 1)
     '("doxnotep" 0)
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

