(require 'init-elpa)
(require-package 'atom-one-dark-theme)
(require-package 'golden-ratio)

(require 'golden-ratio)

(setq inhibit-startup-message t)
(set-cursor-color "#cccccc")
(tool-bar-mode -1)

(setq
 x-select-enable-clipboard t
 x-select-enable-primary t
 save-interproram-paste-before-kill t
 apropos-do-all t
 mouse-yank-at-point t)

(load-theme 'atom-one-dark t)
(golden-ratio-mode 1)

(provide 'init-ui)
