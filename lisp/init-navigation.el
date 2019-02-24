;;; package -- navigation settings
(require 'init-elpa)
(require 'ido)
(require 'recentf)
(require-package 'ido-completing-read+)
(require-package 'ido-vertical-mode)
(require-package 'smex)
(require-package 'projectile)
(require-package 'ripgrep)

(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(recentf-mode 1)
(setq recentf-max-menu-items 40)

(ido-mode t)
(ido-everywhere t)
(ido-vertical-mode 1)
(setq ido-enable-flex-matching t
      ido-use-filename-at-point nil
      ido-auto-merge-work-directories-length -1
      ido-use-virtual-buffers t
      ido-vertical-define-keys 'C-n-and-C-p-only)

(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)

;; Shows list of buffers and switch
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x ,") 'projectile-find-file)

(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

(projectile-global-mode)

;; Enable move point from window to window using Shift and the arrow keys
(windmove-default-keybindings)

(provide 'init-navigation)
;;; init-naviagion.el ends here
