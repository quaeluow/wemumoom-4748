(TeX-add-style-hook
 "sonk-bjps"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "october"
    "lineno")
   (TeX-add-symbols
    '("augustin" 0)
    '("anderson" 0))
   (LaTeX-add-labels
    "Introduction"
    "amalgamated"
    "ex:range"
    "ex:incomp"
    "PlebeiansAndAristocrats"
    "ex:skittles"
    "eq:bern"
    "ex:crude"
    "eq:s2"
    "eq:skit"
    "DilationLearningAndEntropy"
    "dilation"
    "ex:dilation"
    "eq:d1"
    "eq:d2"
    "eq:d3"
    "ex:chocolates"
    "eq:reflection"
    "learning"
    "ex:learning"
    "AugustinsConcessions"
    "jj1"
    "ex:rumour"
    "jj2"
    "TheDoubleTask"
    "ex:aggreg"
    "ex:preccre"
    "ex:monkey"
    "ex:threepris")
   (LaTeX-add-bibliographies
    "bib-7293")))

