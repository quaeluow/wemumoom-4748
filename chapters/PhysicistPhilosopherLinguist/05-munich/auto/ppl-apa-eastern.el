(TeX-add-style-hook "ppl-apa-eastern"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-0861")
    (LaTeX-add-labels
     "Introduction"
     "NatGen"
     "eq:mof"
     "eq:bof"
     "eq:entail"
     "eq:marg"
     "eq:wagn"
     "eq:qofa"
     "WagnersMSolution"
     "eq:p13"
     "eq:p14"
     "eq:p15"
     "eq:kl"
     "TheLinguist"
     "eq:p1"
     "eq:p2"
     "eq:p3"
     "eq:p5"
     "eq:p6"
     "eq:p8"
     "eq:p11"
     "References")
    (TeX-run-style-hooks
     "october"
     ""
     "latex2e"
     "art11"
     "article"
     "11pt")))

