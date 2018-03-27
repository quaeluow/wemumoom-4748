(TeX-add-style-hook "sonk-overleaf"
 (lambda ()
    (LaTeX-add-bibliographies
     "bibtex/bib/IEEEabrv.bib"
     "bibtex/bib/bib-7293.bib")
    (LaTeX-add-environments
     "quotex")
    (LaTeX-add-labels
     "Introduction"
     "SemanticsOfPartialBelief"
     "eq:s2"
     "WalleysWorldCupWoes")
    (TeX-add-symbols
     '("scite" 3)
     '("fixref" 3)
     '("tbd" 1)
     '("bcut" 1)
     '("fcut" 1)
     '("qzwei" 1)
     '("qeins" 1)
     '("doxnotep" 0)
     '("qnull" 1)
     "nias"
     "nial"
     "PageP")
    (TeX-run-style-hooks
     "round"
     "natbib"
     "colon"
     "numbers"
     "enumerate"
     "graphicx"
     "xcolor"
     "table"
     "amsmath"
     "fleqn"
     "amssymb"
     "amsfonts"
     "setspace"
     "cite"
     ""
     "latex2e"
     "IEEEtran10"
     "IEEEtran"
     "journal")))

