(require 'init-elpa)
(require-package 'company)
(require-package 'company-lsp)
(require-package 'lsp-mode)
(require-package 'lsp-ui)
(require 'company)
(require 'company-lsp)

(setq company-tooltip-align-annotations t
      company-idle-delay 0
      company-minimum-prefix-length 1
      company-selection-wrap-around t)

(add-hook 'prog-mode-hook 'company-mode)
(push 'company-lsp company-backends)
(setq lsp-restart 'auto-restart)
(setq lsp-ui-sideline-ignore-duplicate t)
(add-hook 'lsp-mode-hook #'lsp-ui-mode)

(provide 'init-company-mode)
