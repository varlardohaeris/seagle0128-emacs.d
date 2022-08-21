
;; init-been-utils.el --- Initialize ultilities.	-*- lexical-binding: t -*-

;;; Commentary:
;;
;; Some usefule Utilities.
;;

;;; Code:

(defun my/upcase-backwards ()
  "Upcase word in reverse direction, back until the first space char or beginning-of-line"
  (interactive)
  (save-excursion
    ;; move to first non-space char
    (skip-syntax-backward " " (line-beginning-position))
    (push-mark)
    (let ((beginning (or (re-search-backward "[[:space:]]" (line-beginning-position) t)
                         (line-beginning-position)))
          (end (mark)))
      (unless (= beginning end)
        (upcase-region beginning end)))))


(provide 'init-been-utils)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-been-utils.el ends here
