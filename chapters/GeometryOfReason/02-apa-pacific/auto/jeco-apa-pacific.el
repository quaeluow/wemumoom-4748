(TeX-add-style-hook
 "jeco-apa-pacific"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "11pt")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art11"
    "october")
   (LaTeX-add-labels
    "intr"
    "fig:contourslp"
    "fig:contoursrj"
    "eugr"
    "ex:holmes"
    "grit"
    "eq:e6"
    "eq:e7"
    "eq:e3"
    "eq:e8"
    "eq:e9"
    "fig:threepoints"
    "ex:abstract"
    "eq:priors"
    "eq:jc"
    "eq:lpce"
    "eq:lpcf"
    "eq:lpcres"
    "eq:jcres"
    "fivex"
    "Continuity"
    "Regularity"
    "Levinstein"
    "Invariance"
    "Horizon"
    "ex:complaint"
    "Confirmation"
    "Asymmetry"
    "ex:extreme"
    "eq:sksy"
    "fig:concat")
   (LaTeX-add-bibliographies
    "bib-2902")))

