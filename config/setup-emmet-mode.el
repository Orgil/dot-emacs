(require 'emmet-mode)

(add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
(add-hook 'css-mode-hook  'emmet-mode)

(evil-define-key 'insert web-mode-map (kbd "C-y") 'emmet-expand-line)

(defadvice emmet-expand-line (after evil-normal-state activate)
           "Enable Normal state after expansion"
           (evil-normal-state))

(setq emmet-move-cursor-between-quotes t)
(provide 'setup-emmet-mode)
