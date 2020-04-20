(require 'init-elpa)
(require-package 'terraform-mode)
(require-package 'company-terraform)

(require 'terraform-mode)
(require 'company-terraform)

(add-to-list 'auto-mode-alist '("\\.tf\\'" . terraform-mode))
(add-hook 'terraform-mode-hook #'terraform-format-on-save-mode)
(add-hook 'terraform-mode-hook #'company-terraform-init)
(provide 'init-terraform)
