(TeX-add-style-hook "majernik-entropy"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-5908")
    (LaTeX-add-environments
     "quotex")
    (LaTeX-add-labels
     "Introduction"
     "jc"
     "eq:m1"
     "eq:m2"
     "wc"
     "Generalization"
     "eq:m3"
     "eq:m4"
     "eq:m5"
     "eq:m6"
     "eq:m7"
     "eq:m8"
     "eq:m9"
     "eq:m10"
     "eq:m11"
     "eq:m12"
     "eq:m13"
     "eq:m14"
     "eq:m15"
     "eq:m16"
     "Conclusion")
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
     "PageP")
    (TeX-run-style-hooks
     "latex2e"
     "mdpi12"
     "mdpi"
     "a4paper"
     "12pt"
     "pdftex"
     "oneauthor"
     "submit"
     "article"
     "entropy")))

