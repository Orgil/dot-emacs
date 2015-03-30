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
     relative-line-numbers
     powerline-evil
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

(require 'ui)

(require 'powerline)
(powerline-evil-vim-color-theme)
(display-time-mode t)

;;; relative-line-numbers
;;; dired+
(require 'dired+)
;;; multiterm
(require 'multi-term)
(setq multi-term-program "/bin/zsh")

; ;; flycheck
(require 'flycheck)
; (add-hook 'after-init-hook #'global-flycheck-mode)
;
; (after 'flycheck
;   (setq flycheck-check-syntax-automatically '(save mode-enabled))
;   (setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers))
;   (setq flycheck-checkers (delq 'html-tidy flycheck-checkers))
;   (setq flycheck-standard-error-navigation nil))
;
; (global-flycheck-mode t)

;; flycheck errors on a tooltip (doesnt work on console)
; (when (display-graphic-p (selected-frame))
;   (eval-after-load 'flycheck
;     '(custom-set-variables
;       '(flycheck-display-errors-function #'flycheck-pos-tip-error-messages))))

;;; keybinding
; (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
; (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

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
(require 'evil)
(evil-mode 1)

