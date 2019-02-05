(require 'init-elpa)
(require-package 'company)
(require 'company)

(setq company-tooltip-align-annotations t
      company-idle-delay 0
      company-minimum-prefix-length 1
      company-selection-wrap-around t)

(add-hook 'prog-mode-hook 'company-mode)

(provide 'init-company-mode)
