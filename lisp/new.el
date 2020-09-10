(+ 2 (+ 3 3))
fill-column
(dired "~/")
(concat "a" "b")
(substring "a b c" 1 )


(defun multiply-by-seven (number)
  "Multiply NUMBER by seven."
  (interactive "p")
  (message "The result is %d" (* 7 number)))
(multiply-by-seven 3)

(defun name-of-function (arg char str)
  "documentation..."
  (interactive "p\ncInput a char: \nsInput a string: ")
  (message "name-of-function's 1st parameter: %d" arg)
  (message "name-of-function's 2nd parameter: %c" char)
  (message "name-of-function's 3rd parameter: %s" str))




(name-of-function)
(load "~/emacs_lisp/lisp/test.el" )
(test-install-permanently)



(name-of-function a "b")
;;; 3.3.1 An Int
(message "The result is %d." (* 7 5))
(defun multiply-by-seven (number)
  "Multiply NUMBER by seven."
  (interactive "p")
  (message "The result is %d." (* 7 number)))
(multiply-by-seven 7)

(let ((zebra "stripes")
      (tiger "fierce"))
  (message "One kind of animal has %s and another is %s."
	   zebra tiger))

(let ((birch 3)
      pine
      fir
      (oak 'some))
  (message
   "Here are %d variables with %s, %S, and %s value."
   birch pine fir oak))

(let ((a 3)
      (b 4))
  (if (> a b)
      (message "a > b")
    (message " a < b ")))

(if 4
    'true
  'false)

(if nil
    'true
  'false)
(let varlist
  (save-excursion
    body...))
(save-excursion
  first-expression-in-body
  second-expression-in-body
  third-expression-in-body
  ...
  last-expression-in-body)


(save-excursion
  (message "first")
  (message "second")
  (message "third"))

(let ((a 3)
      (b 4)
      (c 5))
  (save-excursion
    (message "first %d" a)
    (message "second %d" b)
    (message "third %d" c)))

(defun dired-unmark-all-marks ()
  "Remove all marks from all files in the Dired buffer."
  (interactive)
  (dired-unmark-all-files ?\r))
(let ((foo (buffer-name))
      (bar (buffer-size)))
  (message
   "This buffer is %s and has %d characters."
   foo bar))

(message "We are %d characters into this buffer."
	 (- (point)
	    (save-excursion
	      (goto-char (point-min)) (point))))
(save-excursion
  (goto-char (point-min))
  (point))

(if (= 22 emacs-major-version)
    (message "This is version 22 Emacs")
  (message "This is not version 22 Emacs"))

(message "%d" emacs-major-version)

;; 3.12 Exercises
(defun double-number (num)
  (* 2 num))
(double-number 2)
(defun double-number-interactive (num)
  (interactive "p")
  (message "%d" (* 2 num)))


(double-number-interactive 2)

(defun test-fill-column (arg)
  (if (> fill-column arg)
      (message "fill-column is larger than arg")
    (message "fill-column is not larger than arg")))
(test-fill-column 32)

(exchange-point-and-mark)

(defun simplified-beginning-of-buffer ()
  "Move point to theh beginning of the uffer;
leave mark at previous position."
  (interactive)
  (push-mark)
  (goto-char (point-min)))

