C-x C-e
(buffer-name)
>> note_20200907.org
(setq a (buffer-file-name))

(defun mark-whole-buffer () ;; name and para
  "put point at beginning and mark at end of buffer." ;; doc
  (interactive) ;; interactive and para, in this para = nil
  (push-mark (point)) ;; cursor now push mark
  (push-mark (point-max) nil t);; ??? nil t???
  (goto-char (point-min))) ;; goto 1

(push-mark (point))
(point)
(push-mark (point))
(point)
(push-mark)
(push-mark (point-max) nil t)

(defun append-to-buffer (buffer start end)
  "Append to specified buffer the text of the region.
It is inserted into that buffer before its point.

When calling from a program, give three arguments:
BUFFER (or buffer name), START and END.
START and END specify the portion of the current buffer to be copied."
  (interactive
   (list (read-buffer "Append to buffer: " (other-buffer
					    (current-buffer) t))
	 (region-beginning) (region-end)))
  (let ((oldbuf (current-buffer)))
    (save-excursion
      (let* ((append-to (get-buffer-create buffer))
	     (windows (get-buffer-window-list append-to t t))
	     point)
	(set-buffer append-to)
	(setq point (point))
	(barf-if0buffer-read-only)
	(insert-buffer-substing oldbuf start end)
	(dolist (window windows)
	  (when (= (window-point window) point)
	    (set-window-point window (point))))))))

(message (other-buffer (current-buffer) t))
;; 4.4.1 The append-to-buffer Interactive Expression
;; Since the append-to-buffer function will be used interactively, the function must
;; have an interactive expression.
;; The expression reads as follows:
(interactive
 (list (read-buffer
	"Append to buffer: "
	(other-buffer (current-buffer) t))
       (region-beginning)
       (region-end)))
;; This expression is not one with letters standing for parts, as described earlier.
;; Instead, it starts a list with these parts:

;; The first part of the list is an expression to read the name of a buffer and return
;; it as a string. That is read-buffer. The function requires a prompt as its first
;; argument, "Append to buffer: ". Its second argument tells the command what value
;; to provide if you don't specify anything.
;; 第一部分：读buffer-name 返回字符串 默认值位第二个参数 双引号为提示

(message (other-buffer (current-buffer) t))
(other-buffer (current-buffer) t)
(region-beginning)
(region-end)

;; In this case that second argument is an expression containing the function
;; other-buffer, an exception, and a 't', standing for true.

;; The first argument to other-buffer, the exception, is yet another function,
;; current-buffer. That is not going to be returned. The second argument is the
;; symbol for true, t. that tells other-buffer that it may show visible buffers
;; (except in this case, it will not show the current buffer, which makes sense).

;; The expression looks like this:

(other-buffer (current-buffer) t)

;; The second and third arguments to the list expression are (region-beginning) and
;; (region-end). These two functions specify the beginning and end of the text to be
;; appended.

;; Originally, the command used the letters 'B' and 'r'. The whole interactive
;; expression looked like this:

(interactive "BAppend to buffer: \nr")

;; But when that was done the default value of the buffer switched to was
;; invisible. That was not wanted.

;; 4.4.2 append-to-buffer
;; The body of the append-to-buffer funciton begins with let.

;; As we have seen before the purpose of a let expression is to create and give
;; initial values to one or more variables that will only be used within the body of
;; the let. This means that such a variable will not be confused with any variable of
;; the same name outside the let expression.

;; We can see how the let expression fits into the function as a whole by showing a
;; template for append-to-buffer with the let expression in outline:

(defun append-to-buffer (buffer start end)
  "documentation...:"
  (interactive ...)
  (let ((variable value))
    body...))

;; The let expression has three elements:
;; 1. The sybol let;
;; 2. A varlist containing, in this case, a single two-element list, (variable
;; value);
;; 3. The body of the let expression.
