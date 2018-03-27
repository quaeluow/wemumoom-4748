(TeX-add-style-hook "prospectus"
 (lambda ()
    (LaTeX-add-bibliographies
     "bib-3415")
    (LaTeX-add-labels
     "Abstract"
     "LiteratureReview"
     "InductiveLogicAndEntropy"
     "InformationTheoryAndThePrincipleOfMaximumEntropy"
     "EarlyCriticism"
     "LateCriticism"
     "ThePrincipleOfMaximumEntropyVices"
     "Proposal"
     "ChapterOutline"
     "Introduction"
     "ThePrincipleOfMaximumEntropyVirtuesAndVices"
     "JudyBenjamin"
     "TheShimonyObjection"
     "TheSeidenfeldObjection"
     "TheWagnerObjection"
     "CoarseningAtRandom"
     "ConceptualProblems"
     "EpistemologicalImplications"
     "Bibliography")
    (TeX-run-style-hooks
     "october"
     ""
     "latex2e"
     "art11"
     "article"
     "11pt")))

