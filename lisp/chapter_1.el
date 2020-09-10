;; 1.1 Lisp Lists

;; In Lisp, a list looks like this:
'(rose violet daisy buttercup)
'(rose
  violet
  daisy
  buttercup)

(+ 2 2)

'(this list has (a list inside of it))

;;; 1.1.1 Lisp Atoms

;; * separated by whitespace
;; * () an empty list: both an atom and a list
;; * most time (except array) are unsplittable

;; atoms:
;; * numbers: 37, 511, or 1729,...
;; * symbols: +, -, *, /, forward-line...
;; * strings: "this is a "
;; * STRINGS:

;;; 1.1.3 Indenting region
;; M-C-\

;; quote '
;; C-x C-e: eval-last-sexp
;; C-u C-x C-e: result of eval-last-sexp
(+ 2 2)

(quote (this is a quoted list))
'(this is a quoted list)

;; 1.3 Generate an Error Message
(+ 2 2)
