;;; loading package manager
(require 'package)

(setq init-home-dir (file-name-directory user-init-file))
;;; here we're adding extra package repo
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'load-path
             (expand-file-name "elisp" init-home-dir))
(require 'ensure-packages)

(setq ensure-packages
  '(color-theme-sanityinc-tomorrow
     company
     company-tern
     yasnippet
     web-mode
     php-mode
     projectile
     neotree
     rainbow-delimiters
     hlinum
     powerline
     helm
     helm-projectile
     multi-term
     dired+
     markdown-mode
     git-gutter-fringe
     php-mode
     flycheck
     flycheck-pos-tip
     ))
  "A list of packages to ensure are installed at launch."
(ensure-packages-install-missing)

(require 'company)
(add-hook 'after-init-hook 'global-company-mode)
; (add-to-list 'company-backends 'company-tern)


(defun bw/company-complete-lambda (arg)
  (company-complete))
(setq
   ;; autocomplete right after '.'
   company-minimum-prefix-length 0
   ;; remove echo delay
   company-echo-delay 0
   ;; don't complete in certain modes
   company-global-modes '(not git-commit-mode)
   ;; make sure evil uses the right completion functions
   evil-complete-next-func 'bw/company-complete-lambda
   evil-complete-previous-func 'bw/company-complete-lambda)

(require 'core)
(require 'ui)

(require 'yasnippet)
(yas-global-mode 1)

;;; webmode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(require 'git-gutter-fringe)
(global-git-gutter-mode t)
; (require 'git-gutter)
; ;; If you enable global minor mode
; (global-git-gutter-mode t)
; (custom-set-variables '(git-gutter:update-interval 2))
(fringe-helper-define 'git-gutter-fr:added nil
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX")

(fringe-helper-define 'git-gutter-fr:deleted nil
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX")

(fringe-helper-define 'git-gutter-fr:modified nil
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX"
  "....XXXX")

(require 'projectile)

(require 'neotree)
(setq neo-window-width 28)
(global-set-key [f4] 'neotree-toggle)
(setq projectile-switch-project-action 'neotree-projectile-action)
(set-display-table-slot standard-display-table 0 ?✂)


(add-hook 'neotree-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map (kbd "o") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "s") 'neotree-enter-vertical-split)
            (define-key evil-normal-state-local-map (kbd "i") 'neotree-enter-horizontal-split)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))

(require 'powerline)
(powerline-center-evil-theme)
(display-time-mode t)

(add-hook 'after-init-hook 'global-company-mode)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(require 'hlinum)
(hlinum-activate)

(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

;;; dired+
(require 'dired+)
;;; multiterm
(require 'multi-term)
(setq multi-term-program "/bin/zsh")

; ;; flycheck
(require 'flycheck)
(add-hook 'after-init-hook #'global-flycheck-mode)

; (after 'flycheck
;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
;   (setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers))
;   (setq flycheck-checkers (delq 'html-tidy flycheck-checkers))
;   (setq flycheck-standard-error-navigation nil))
;
(global-flycheck-mode t)

; flycheck errors on a tooltip (doesnt work on console)
(when (display-graphic-p (selected-frame))
  (eval-after-load 'flycheck
                   '(custom-set-variables
                      '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))))

;; esc quits
; (defun minibuffer-keyboard-quit ()
;   (interactive)
;   (if (and delete-selection-mode transient-mark-mode mark-active)
;       (setq deactivate-mark  t)
;     (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
;     (abort-recursive-edit)))
; (define-key evil-normal-state-map [escape] 'keyboard-quit)
; (define-key evil-visual-state-map [escape] 'keyboard-quit)
; (define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
; (define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
; (define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
; (define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
; (define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
; (global-set-key [escape] 'evil-exit-emacs-state)


;;; loading permanent evil mode
(require 'evil)
(evil-mode 1)

;;; keybindings
(require 'keybinding)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "#1d1f21" :foreground "#de935f"))))
 '(linum ((t (:background "#1d1f21" :foreground "#373b41" :slant normal))))
 '(linum-highlight-face ((t (:inherit default :background "#1d1f21" :foreground "#f0c674")))))
