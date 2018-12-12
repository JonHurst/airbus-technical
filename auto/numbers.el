(TeX-add-style-hook
 "numbers"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "twoside" "10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8x") ("fontenc" "T1") ("geometry" "paper=a5paper" "inner=2cm" "outer=1.25cm" "tmargin=1.25cm" "bmargin=1.25cm" "includefoot")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "inputenc"
    "fontenc"
    "txfonts"
    "geometry"
    "setspace"
    "graphics"
    "color"
    "paralist"
    "array")
   (TeX-add-symbols
    '("mysec" ["argument"] 2)
    '("rwstate" 1)
    '("pitem" 1)
    '("mylist" 1)
    '("secref" 1)
    "iitem")
   (LaTeX-add-labels
    "autoland_wind_limits"
    "other_autoland_limits"
    "ils"
    "failure-strategies"))
 :latex)

