(TeX-add-style-hook
 "moninv"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "october"
    "lineno")
   (LaTeX-add-labels
    "eq:sksy"
    "subsubsec:hfm"
    "eq:triang"
    "eq:triangviol"
    "eq:transviol"
    "eq:simpromat"
    "eq:dklpromat"
    "eq:skewsym"
    "eq:herm"
    "eq:unitary"
    "eq:simh"
    "eq:simu"
    "eq:dklh"
    "eq:dklu"
    "eq:linalgtheorem"
    "subsubsec:infogeo"
    "app:asytwodims"
    "eq:twodims"
    "eq:lemma"
    "eq:thirteena"
    "eq:thirteenb"
    "eq:thirteenc"
    "fig:concat")
   (LaTeX-add-bibliographies
    "bib-9309")))

