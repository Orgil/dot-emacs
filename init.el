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
     web-mode
     php-mode
     rainbow-delimiters
     fill-column-indicator
     relative-line-numbers
     powerline
     helm
     multi-term
     dired+
     markdown-mode 
     php-mode 
     flycheck
     flycheck-pos-tip
     ))
  "A list of packages to ensure are installed at launch."
(ensure-packages-install-missing)

(require 'core)
(require 'ui)
;;; webmode
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\.twig\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(require 'powerline)
(powerline-center-evil-theme)
(display-time-mode t)

(add-hook 'after-init-hook 'global-company-mode)
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;;; relative-line-numbers
(add-hook 'prog-mode-hook 'relative-line-numbers-mode t)
(add-hook 'prog-mode-hook 'line-number-mode t)
(add-hook 'prog-mode-hook 'column-number-mode t)

(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
(require 'saveplace)

(require 'fill-column-indicator)
(setq-default fill-column 100)
; (add-hook 'text-mode-hook (lambda ()
;                             (turn-on-auto-fill)
;                             (fci-mode)
;                             (set-fill-column 80)))
; (add-hook 'markdown-mode-hook (lambda ()
;                             (turn-on-auto-fill)
;                             (fci-mode)
;                             (set-fill-column 80)))

(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)
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

