(require 'scss-mode)
; (setq exec-path (cons (expand-file-name "~/.gem/ruby/2.2/bin") exec-path))
; (add-to-list 'load-path (expand-file-name "~/.emacs.d/folder-where-you-put-scss-mode-el"))
;
(setq scss-compile-at-save nil)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))
(provide 'setup-scss-mode)
