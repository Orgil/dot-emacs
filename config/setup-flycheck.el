(require 'flycheck)

(global-flycheck-mode)
(custom-set-variables
 '(flycheck-highlighting-mode 'symbols)
 '(flycheck-indication-mode 'right-fringe)
)
(when (display-graphic-p (selected-frame))
  (eval-after-load 'flycheck
                   '(custom-set-variables
                      '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))))
(eval-after-load 'flycheck
                 '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(setq flycheck-clang-include-path
                           (list (expand-file-name "/usr/local/include/")))
(provide 'setup-flycheck)
