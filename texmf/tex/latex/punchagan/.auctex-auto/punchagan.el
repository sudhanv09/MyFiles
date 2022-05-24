(TeX-add-style-hook
 "punchagan"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("fullpage" "empty")))
   (TeX-run-style-hooks
    "latexsym"
    "amsmath"
    "amssymb"
    "charter"
    "color"
    "calc"
    "hyperref"
    "titlesec"
    "fullpage")
   (TeX-add-symbols
    '("resheader" 6)))
 :latex)

