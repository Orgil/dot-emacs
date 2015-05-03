;;; loading package manager
(require 'package)
(setq package-enable-at-startup nil)

(setq init-home-dir (file-name-directory user-init-file))
(setq cache-dir (concat (file-name-directory user-init-file) ".cache"))
(add-to-list 'load-path
             (expand-file-name "config" init-home-dir))
;;; here we're adding extra package repo
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;; ensuring packages installed if not install it
(require 'ensure-packages)
(ensure-packages-install-missing)

(require 'core)

;;; Plugins
(require 'setup-evil-mode)
(require 'setup-hlinum)
(require 'setup-rainbow-delimiters)
(require 'setup-yassnippet)
(require 'setup-smart-mode-line)
(require 'setup-helm)
(require 'setup-projectile)
(require 'setup-cedet)
(require 'setup-company)
(require 'setup-flycheck)

; ;;; webmode
; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
; (add-to-list 'auto-mode-alist '("\\.html\\.twig\\'" . web-mode))
; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;
; (require 'git-gutter-fringe)
; (global-git-gutter-mode t)
; ; (require 'git-gutter)
; ; ;; If you enable global minor mode
; ; (global-git-gutter-mode t)
; ; (custom-set-variables '(git-gutter:update-interval 2))
; (fringe-helper-define 'git-gutter-fr:added nil
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX.")
;
; (fringe-helper-define 'git-gutter-fr:deleted nil
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX.")
;
; (fringe-helper-define 'git-gutter-fr:modified nil
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX."
;   "...XXXX.")
;
; (setq save-place-file "~/.emacs.d/saveplace")
; (setq-default save-place t)
; (require 'saveplace)
;
; ;;; multiterm
; (require 'multi-term)
; (setq multi-term-program "/bin/zsh")
;
; ; ;; flycheck
; (require 'flycheck)
; (add-hook 'after-init-hook #'global-flycheck-mode)
;
; ; (after 'flycheck
; ;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
; ;   (setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers))
; ;   (setq flycheck-checkers (delq 'html-tidy flycheck-checkers))
; ;   (setq flycheck-standard-error-navigation nil))
; ;
; (global-flycheck-mode t)
;
; ; flycheck errors on a tooltip (doesnt work on console)
; (when (display-graphic-p (selected-frame))
;   (eval-after-load 'flycheck
;                    '(custom-set-variables
;                       '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))))
;
; ;; esc quits
; ; (defun minibuffer-keyboard-quit ()
; ;   (interactive)
; ;   (if (and delete-selection-mode transient-mark-mode mark-active)
; ;       (setq deactivate-mark  t)
; ;     (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
; ;     (abort-recursive-edit)))
; ; (define-key evil-normal-state-map [escape] 'keyboard-quit)
; ; (define-key evil-visual-state-map [escape] 'keyboard-quit)
; ; (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
; ; (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
; ; (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
; ; (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
; ; (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
; ; (global-set-key [escape] 'evil-exit-emacs-state)
;
;
; ;;; loading permanent evil mode
; (require 'evil)
; (evil-mode 1)
;
; ;;; keybindings
; (require 'keybinding)
;
(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "#1d1f21" :foreground "#de935f"))))
 '(linum ((t (:background "#1d1f21" :foreground "#373b41" :slant normal))))
 '(linum-highlight-face ((t (:inherit default :background "#1d1f21" :foreground "#f0c674")))))
