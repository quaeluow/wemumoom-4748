(TeX-add-style-hook
 "october"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("caption" "small" "bf") ("natbib" "numbers" "colon" "round")))
   (TeX-run-style-hooks
    "caption"
    "setspace"
    "amsfonts"
    "amssymb"
    "amsmath"
    "graphicx"
    "enumerate"
    "natbib")
   (TeX-add-symbols
    '("scite" 3)
    '("mthree" 0)
    '("Kantian" 0)
    '("kantian" 0)
    '("tr" 1)
    '("citpro" 1)
    '("tbd" 1)
    '("qzwei" 1)
    '("qeins" 1)
    '("qnull" 1)
    "nias"
    "nial"
    "PageP"
    "oldmarginpar")
   (LaTeX-add-environments
    "quotex")))

