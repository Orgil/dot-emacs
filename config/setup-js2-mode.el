(require 'js2-mode)
; (add-hook 'js2-mode-hook (lambda ()
;             (tern-mode t)))

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(setq js-basic-indent 2)
(setq-default js2-basic-indent 2)
(setq-default js2-basic-offset 2)
(setq-default js2-auto-indent-p t)
(setq-default js2-cleanup-whitespace t)
(setq-default js2-enter-indents-newline t)
(setq-default js2-global-externs "jQuery $")
(setq-default js2-indent-on-enter-key t)
(setq-default js2-mode-indent-ignore-first-tab t)

(provide 'setup-js2-mode)
