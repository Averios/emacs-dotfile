
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-elpa)
(require 'init-ui)
(require 'init-editing)
(require 'init-navigation)
(require 'init-miscellaneous)
(require 'init-company-mode)

;; Language support
(require 'init-terraform)
(require 'init-ansible)
(require 'init-rust)
(require 'init-markdown)
(require 'init-golang)

(provide 'init)

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode 1))

(defun reload-init-emacs ()
  "Reload emacs configuration"
  (interactive)
  (load-file "$HOME/.emacs.d/init.el"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (company-go go-eldoc go-mode markdown-mode ansible yaml-mode terraform-mode projectile smex ido-completing-read+ flycheck rainbow-delimiters golden-ratio atom-one-dark-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
