(require 'init-elpa)
(require-package 'go-mode)
(require-package 'go-eldoc)
(require-package 'company-go)

(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode 1)
                          (add-hook 'before-save-hook 'gofmt-before-save nil t)
                          (setq gofmt-command "goimports")                ; gofmt uses invokes goimports
                          (if (not (string-match "go" compile-command))   ; set compile command default
                              (set (make-local-variable 'compile-command)
                                   "go build -v && go test -v && go vet"))
                          (define-key go-mode-map (kbd "M-.") 'godef-jump)
                          ))
(add-hook 'go-mode-hook 'go-eldoc-setup)

(provide 'init-golang)
