(TeX-add-style-hook
 "october"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("caption" "small" "bf") ("amsmath" "fleqn") ("xcolor" "table") ("natbib" "numbers" "colon" "round")))
   (TeX-run-style-hooks
    "caption"
    "setspace"
    "amsfonts"
    "amssymb"
    "amsmath"
    "xcolor"
    "graphicx"
    "enumerate"
    "titlesec"
    "natbib")
   (TeX-add-symbols
    '("scite" 3)
    '("fixref" 3)
    '("beispiel" 1)
    '("tbd" 1)
    '("fcut" 1)
    '("qzwei" 1)
    '("qeins" 1)
    '("doxnotep" 0)
    '("qnull" 1)
    "nias"
    "nial"
    "xample"
    "PageP"
    "oldmarginpar")
   (LaTeX-add-environments
    "quotex")
   (LaTeX-add-counters
    "expls")))

