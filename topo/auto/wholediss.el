(TeX-add-style-hook
 "wholediss"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ubcthesis" "phd" "12pt" "oneside" "paper=letterpaper")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "pdftex") ("natbib" "round")))
   (TeX-run-style-hooks
    "latex2e"
    "ubcthesis"
    "ubcthesis12"
    "geometry"
    "natbib"
    "setspace")
   (LaTeX-add-bibliographies
    "dissbib")))

