(TeX-add-style-hook
 "sumlambdas"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "landscape" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("amsmath" "fleqn")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "amsfonts"
    "amssymb"
    "amsmath")
   (TeX-add-symbols
    "R"
    "C"
    "N"
    "Q"
    "Z"
    "PP")
   (LaTeX-add-labels
    "eq:n1"
    "eq:n2"
    "eq:n3"
    "eq:n4")))

