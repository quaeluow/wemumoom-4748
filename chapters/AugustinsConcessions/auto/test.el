(TeX-add-style-hook "test"
 (lambda ()
    (LaTeX-add-labels
     "pha: mysubphase"
     "pha: last phase")
    (TeX-add-symbols
     '("subphase" 1)
     '("phase" 1))
    (TeX-run-style-hooks
     "latex2e"
     "art10"
     "article"
     "")))

