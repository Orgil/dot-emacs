(require 'company)
(add-hook 'after-init-hook 'global-company-mode)


(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 1)
(setq company-show-numbers t)
(setq company-tooltip-limit 20)

(eval-after-load 'company
                 '(progn
                    (define-key company-active-map (kbd "C-n") 'company-select-next)
                    (define-key company-active-map [tab] 'company-complete-selection)
                    (define-key company-active-map (kbd "C-p") 'company-select-previous)))

(add-hook 'company-mode-hook (lambda ()
                               (substitute-key-definition 'company-complete-common
                                                          'company-yasnippet-or-completion
                                                          company-active-map)))

(setq company-dabbrev-downcase nil)
(setq company-dabbrev-ignore-case t)

(setq company-dabbrev-code-ignore-case t)
(setq company-dabbrev-code-everywhere t)

(setq company-etags-ignore-case t)

(setq company-etags-ignore-case t)

; (unless (face-attribute 'company-tooltip :background)
;   (set-face-attribute 'company-tooltip nil :background "black" :foreground "gray40")
;   (set-face-attribute 'company-tooltip-selection nil :inherit 'company-tooltip :background "gray15")
;   (set-face-attribute 'company-preview nil :background "black")
;   (set-face-attribute 'company-preview-common nil :inherit 'company-preview :foreground "gray40")
;   (set-face-attribute 'company-scrollbar-bg nil :inherit 'company-tooltip :background "gray20")
;   (set-face-attribute 'company-scrollbar-fg nil :background "gray40"))

(setq company-c-headers-path-system flycheck-clang-include-path)
; (add-to-list 'company-backends 'company-tern)
(add-to-list 'company-backends 'company-c-headers)
; (delete 'company-semantic company-backends)
; (when (executable-find "tern")
; (after "company-tern-autoloads"
;        (add-to-list 'company-backends 'company-tern)))

(eval-after-load 'company
  '(push 'company-robe company-backends))

; (require 'helm-company)
; (eval-after-load 'company
;   '(progn
;      (define-key company-mode-map (kbd "C-:") 'helm-company)
;      (define-key company-active-map (kbd "C-:") 'helm-company)))

; (when (display-graphic-p)
; (require 'company-quickhelp)
(company-quickhelp-mode 1)
(setq company-quickhelp-delay 0.1)

(defun company-yasnippet-or-completion ()
  (interactive)
  (let ((yas-fallback-behavior nil))
    (unless (yas-expand)
      (call-interactively #'company-complete-common))))

(provide 'setup-company)
