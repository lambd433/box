(defun beginning-of-next-line-text ()
  "Move to the beginning of next line text"
  (interactive)
  (let
      ((cl (count-lines (point-min) (point)))
       (eol (count-lines 1 (point-max))))
    (if (equal cl eol)
        (let ()
          (end-of-line)
          (newline-and-indent))
      (let ()
        (next-line)
        (beginning-of-line-text)))))

(defun beginning-of-next-line ()
  "Move to the beginning of next line"
  (interactive)
  (let
      ((cl (count-lines (point-min) (point)))
       (eol (count-lines 1 (point-max))))
    (if (equal cl eol)
        (let ()
          (end-of-line)
          (newline-and-indent))
      (let ()
        (next-line)
        (beginning-of-line)))))
(defun end-of-previous-line ()
  "Move to the end of previous line"
  (interactive)
  (let
      ((cl (count-lines (point-min) (point))))
    (if (not (= cl 0))
        (let ()
          (previous-line)
          (end-of-line)))))
;; (define-key global-map "\M-n" 'beginning-of-next-line-text)
;; (define-key global-map "\M-p" 'end-of-previous-line)

