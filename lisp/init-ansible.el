(require 'init-elpa)
(require-package 'yaml-mode)
(require-package 'ansible)
(require-package 'company-ansible)

(require 'company)

(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-hook 'yaml-mode-hook #'company-mode)
(add-hook 'yaml-mode-hook '(lambda ()
                             (ansible 1)
                             (set (make-local-variable 'company-backends) '(company-ansible))
                             ))

(provide 'init-ansible)

