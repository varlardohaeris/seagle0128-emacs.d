;;; init-mgit  ---  config mgit
;;; Commentary:
;;; Code:

(add-to-list 'load-path "~/.emacs.d/site-lisp/magit/lisp")
(require 'magit)

(with-eval-after-load 'info
  (info-initialize)
  (add-to-list 'Info-directory-list
               "~/.emacs.d/site-lisp/magit/Documentation/"))



(provide 'init-mgit)
;;; init-mgit.el ends here
