;;; init-mgit  ---  config mgit
;;; Commentary:
;;; Code:

(add-to-list 'load-path "~/.emacs.d/local/mgit/lisp")
(require 'magit)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/local/mgit/docs/"))



(provide 'init-mgit)
;;; init-mgit.el ends here
