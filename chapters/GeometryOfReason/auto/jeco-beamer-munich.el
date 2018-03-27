(TeX-add-style-hook "jeco-beamer-munich"
 (lambda ()
    (LaTeX-add-labels
     "eq:e3"
     "eq:e7"
     "eq:eli"
     "eq:egi"
     "eq:sherlockcontsc"
     "eq:sherlockcontjc"
     "eq:sherlockcontlp"
     "eq:marpleprior"
     "eq:sherlockposteriorjc"
     "eq:marpleposteriorjc"
     "eq:sherlockposteriorlp"
     "eq:marpleposteriorlp")
    (TeX-run-style-hooks
     "colortbl"
     "wrapfig"
     "graphicx"
     ""
     "latex2e"
     "beamer10"
     "beamer"
     "xcolor=dvipsnames")))

