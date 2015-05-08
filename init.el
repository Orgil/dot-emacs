(setq user-full-name "Orgil"
      user-mail-address "orgil.u@gmail.com")

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
(require 'init-functions)

;;; Plugins
(require 'setup-evil-mode)
(require 'setup-hlinum)
(require 'setup-rainbow-delimiters)
(require 'setup-yassnippet)
(require 'setup-smart-mode-line)
(require 'setup-helm)
(require 'setup-projectile)
(require 'setup-company)
(require 'setup-flycheck)
(require 'setup-git-gutter)
(require 'setup-irony)
(require 'setup-neotree)
(require 'setup-magit)

; ;;; webmode
; (add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
; (add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
; (add-to-list 'auto-mode-alist '("\\.html\\.twig\\'" . web-mode))
; (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
;
; (setq save-place-file "~/.emacs.d/saveplace")
; (setq-default save-place t)
; (require 'saveplace)
;
; ;;; multiterm
; (require 'multi-term)
; (setq multi-term-program "/bin/zsh")
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
(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(neo-theme (quote nerd)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "#1d1f21" :foreground "#de935f"))))
 '(linum ((t (:background "#222426" :foreground "#40454c" :slant normal))))
 '(linum-highlight-face ((t (:inherit default :background "#1d1f21" :foreground "#f0c674")))))
