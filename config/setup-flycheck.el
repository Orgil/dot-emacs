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

(with-eval-after-load 'flycheck
  (setq-default flycheck-disabled-checkers '(emacs-lisp-checkdoc)))

(eval-after-load 'flycheck
                 '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(setq flycheck-clang-include-path
                           (list (expand-file-name "/usr/local/include/")))

;; Flycheck JSCS
(flycheck-def-config-file-var flycheck-jscs javascript-jscs ".jscs.json"
                              :safe #'stringp)

(flycheck-define-checker javascript-jscs
                         "A JavaScript code style checker.
                         See URL `https://github.com/mdevils/node-jscs'."
                         :command ("jscs" "--reporter" "checkstyle"
                                   (config-file "--config" flycheck-jscs)
                                   source)
                         :error-parser flycheck-parse-checkstyle
                         :modes (js-mode js2-mode js3-mode)
                         :next-checkers (javascript-jshint))

(defun jscs-enable () (interactive)
  (add-to-list 'flycheck-checkers 'javascript-jscs))

(defun jscs-disable () (interactive)
  (setq flycheck-checkers (remove 'javascript-jscs flycheck-checkers)))

(provide 'setup-flycheck)
