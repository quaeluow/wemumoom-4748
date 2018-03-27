(TeX-add-style-hook "sonk-philsci"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-7293")
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
     "eq:reflection"
     "learning"
     "ex:learning"
     "AugustinsConcessions"
     "jj1"
     "ex:die"
     "ex:rumour"
     "ex:urns"
     "jj2"
     "TheDoubleTask"
     "ex:aggreg"
     "ex:preccre"
     "ex:monkey"
     "ex:threepris")
    (TeX-run-style-hooks
     "october"
     "latex2e"
     "art12"
     "article"
     "12pt")))
