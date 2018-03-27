(TeX-add-style-hook
 "apbr"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("ubcthesis" "phd" "12pt" "oneside")))
   (TeX-run-style-hooks
    "latex2e"
    "ubcthesis"
    "ubcthesis12"
    "october")
   (LaTeX-add-labels
    "chp:cahxahmu"
    "chp:ohjafaex"
    "sec:kishooyi"
    "ex:waterwine"
    "sec:ieghosha"
    "sec:iejikoov"
    "subsec:phopheil"
    "subsec:zaibahyi"
    "sec:iephahce"
    "sec:oohoodee"
    "sec:maifeida"
    "chp:gahrihoo"
    "sec:teiyaefi"
    "eq:simplex"
    "fig:contourslp"
    "fig:contoursrj"
    "sec:chuweiyo"
    "subsec:oochihei"
    "subsec:eichaequ"
    "eq:e4"
    "eq:e5"
    "eq:linacc"
    "eq:ginacc"
    "eq:e1"
    "eq:e2"
    "eq:e3"
    "eq:eli"
    "eq:egi"
    "quot:weakconv"
    "quot:symmetry"
    "subsec:vidiedoo"
    "ex:holmes"
    "page:listone"
    "page:listtwo"
    "fig:conditions"
    "sec:shahseid"
    "eq:e6"
    "eq:e7"
    "eq:e8"
    "eq:e9"
    "eq:e8a"
    "fig:threepoints"
    "subsec:aichavag"
    "subsec:meexughi"
    "ex:abstract"
    "eq:priors"
    "eq:jc"
    "eq:lpce"
    "eq:lpcf"
    "eq:lpcres"
    "eq:jcres"
    "subsec:ieseiwoh"
    "eq:jooziphu"
    "fig:eugoohue"
    "eq:ocidocho"
    "eq:reejeiru"
    "eq:saithain"
    "eq:eaghaidu"
    "eq:eiweehee"
    "eq:nainguji"
    "eq:ohjoogoh"
    "eq:ouquuzoh"
    "eq:aemaujei"
    "sec:ooyaekoo"
    "subsec:thaoyahc"
    "eq:sherlockcontsc"
    "eq:sherlockcontjc"
    "eq:sherlockcontlp"
    "subsec:shoedaic"
    "ex:regularity"
    "eq:sherlockposteriorjcreg"
    "eq:sherlockposteriorlpreg"
    "subsec:tohcahye"
    "ex:levinstein"
    "subsec:afaisiug"
    "ex:marple"
    "eq:marpleprior"
    "eq:sherlockposteriorjc"
    "eq:marpleposteriorjc"
    "eq:sherlockposteriorlp"
    "eq:marpleposteriorlp"
    "eq:reginvone"
    "eq:reginvtwo"
    "subsec:uurohkei"
    "ex:complaint"
    "ex:schlesinger"
    "subsec:ooraisoh"
    "eq:relevance"
    "page:listthree"
    "ex:ieyohjah"
    "eq:defdhpos"
    "eq:defdhneg"
    "fig:doconf"
    "ex:idaboogi"
    "sec:expinfth"
    "subsec:triangularity"
    "eq:yohliimo"
    "eq:aiphedau"
    "eq:queireiw"
    "eq:eiquotoh"
    "eq:xiechuth"
    "eq:ohrohshi"
    "subsec:colhor"
    "eq:ubiesohx"
    "eq:eiloothu"
    "eq:dailoosu"
    "eq:iengaech"
    "eq:feovaivo"
    "fig:eeghoomo"
    "subsec:Asymmetry"
    "ex:extreme"
    "eq:sksy"
    "eq:sieruxis"
    "eq:transviol"
    "chp:eejiegei"
    "sec:euboonei"
    "ex:piecemeal"
    "sec:feeriesh"
    "ex:linguist"
    "eq:mof"
    "eq:bof"
    "eq:entail"
    "eq:marg"
    "eq:wagn"
    "eq:qofa"
    "sec:gaephuiw"
    "eq:p13"
    "eq:p14"
    "eq:p15"
    "eq:kl"
    "ex:simpllinguist"
    "sec:uodeigei"
    "eq:m1"
    "eq:m2"
    "ex:colblind"
    "eq:jcs"
    "eq:kappa"
    "eq:zeta"
    "eq:m3"
    "eq:m4"
    "eq:m5"
    "eq:m6"
    "eq:m7"
    "eq:m8"
    "eq:m9"
    "eq:m10"
    "eq:m11"
    "eq:m12"
    "eq:m13"
    "eq:m14"
    "eq:m15"
    "eq:m16"
    "chp:eingeili"
    "sec:chiegaen"
    "sec:taishiev"
    "ex:range"
    "ex:incomp"
    "page:houwieve"
    "sec:ulolumei"
    "ex:skittles"
    "eq:bern"
    "ex:crude"
    "eq:s2"
    "eq:skit"
    "sec:aequahfo"
    "subsec:aejoorau"
    "ex:dilation"
    "eq:d1"
    "eq:d2"
    "eq:d3"
    "ex:chocolates"
    "eq:reflection"
    "subsec:eeyuquai"
    "ex:learning"
    "sec:oneilafa"
    "subsec:phahngot"
    "ex:die"
    "eq:kiedofob"
    "eq:booseetu"
    "ex:rumour"
    "ex:urns"
    "subsec:chaeniik"
    "sec:ohbooquu"
    "ex:aggreg"
    "ex:preccre"
    "ex:monkey"
    "ex:threepris"
    "page:iabeiwet"
    "chp:eeyijeen"
    "sec:shutepae"
    "fig:aff"
    "fig:map"
    "ex:judybenjamin"
    "sec:daingeum"
    "eq:map"
    "eq:hdq"
    "eq:aengaini"
    "eq:shipodei"
    "eq:vmax"
    "eq:gujeshoh"
    "eq:ohyooquo"
    "eq:ahkoonae"
    "eq:johvulat"
    "fig:unif"
    "fig:mxnt"
    "sec:oochaith"
    "ex:sundowners"
    "ex:jewelry"
    "sec:ahdiesho"
    "eq:ooshooth"
    "eq:ailosahz"
    "sec:eezaitod"
    "fig:pwstex1"
    "fig:pwstex2"
    "fig:pwst"
    "chp:zeetahgh"
    "app:wcs"
    "eq:app1"
    "eq:app2"
    "eq:logsum"
    "eq:app3"
    "app:asytwodims"
    "eq:twodims"
    "eq:lemma"
    "eq:thirteena"
    "eq:thirteenb"
    "eq:thirteenc"
    "fig:concat"
    "app:horform"
    "eq:defvmu"
    "eq:defmu"
    "eq:lpder"
    "app:eekiquom"
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
    "app:theeceic"
    "app:yeequika"
    "eq:sc"
    "eq:sclag"
    "eq:sc1"
    "eq:sc2"
    "app:ukotooje"
    "eq:jc1"
    "eq:jc2"
    "eq:jclag"
    "eq:jc4"
    "eq:jc5"
    "app:choiwohk"
    "eq:constraint"
    "eq:unity"
    "eq:entropy"
    "eq:functional"
    "eq:funder"
    "eq:coverthomas"
    "eq:l1"
    "eq:zet"
    "eq:l0"
    "eq:logcon"
    "eq:unishow"
    "eq:diquefuc"
    "app:kiiwivul"
    "eq:iengiebu"
    "eq:naibepha"
    "eq:kuquoosu"
    "eq:jahbohgh"
    "eq:idooyeib"
    "eq:uumavael"
    "eq:shiewain"
    "eq:wahweele"
    "eq:augahghu"
    "eq:aiphueri"
    "eq:quoseoth"
    "eq:sheyupei"
    "eq:den"
    "eq:beseituc"
    "eq:iuloogho"
    "eq:yaekituk"
    "eq:eyeangie"
    "eq:ohghaeni"
    "eq:num"
    "eq:nahngeil"
    "eq:beefadao"
    "eq:chuhohng"
    "eq:oobeadoo")
   (LaTeX-add-bibliographies
    "bib-3415")))

