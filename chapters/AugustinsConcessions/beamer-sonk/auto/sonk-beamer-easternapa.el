(TeX-add-style-hook "sonk-beamer-easternapa"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-7293")
    (LaTeX-add-labels
     "ex:range"
     "ex:incomp"
     "ex:skittles"
     "eq:bern"
     "ex:crude"
     "eq:s2"
     "eq:skit"
     "ex:dilation"
     "eq:d1"
     "eq:d2"
     "eq:d3"
     "ex:chocolates"
     "ex:learning"
     "ex:aggreg"
     "ex:monkey")
    (TeX-add-symbols
     '("augustin" 0)
     '("anderson" 0))
    (TeX-run-style-hooks
     "october"
     "latex2e"
     "art11"
     "article"
     "11pt")))

