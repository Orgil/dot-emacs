(require 'evil-leader)
(evil-leader/set-leader ",")
(evil-leader/set-key
  "f" 'find-file
  "b" 'switch-to-buffer
  "," 'switch-to-previous-buffer
  "k" 'kill-buffer
  "x" 'helm-M-x
  "n e" 'flycheck-next-error
  "p e" 'flycheck-previous-error
  "e" 'flycheck-list-errors
  "SPC" 'ff-find-other-file
  )

(global-evil-leader-mode)

(require 'evil)
(evil-mode 1)


;;; window navigation
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

;;; j k navigation visual line
(define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
(define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)

;;; c-j c-k page up/down
(define-key evil-normal-state-map (kbd "C-u") (lambda ()
                                                (interactive)
                                                (evil-scroll-up nil)))
(define-key evil-normal-state-map (kbd "C-d") (lambda ()
                                                (interactive)
                                                (evil-scroll-down nil)))

; esc quits
(defun minibuffer-keyboard-quit ()
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
    (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)
(global-set-key [escape] 'evil-exit-emacs-state)


(require 'evil-surround)
(global-evil-surround-mode t)

(require 'evil-exchange)
(evil-exchange-install)

(require 'evil-matchit)
(defun evilmi-customize-keybinding ()
  (evil-define-key 'normal evil-matchit-mode-map
                   "%" 'evilmi-jump-items))
(global-evil-matchit-mode t)


(require 'evil-indent-textobject)


(require 'evil-visualstar)
(global-evil-visualstar-mode t)


(require 'evil-numbers)

(setq evilnc-hotkey-comment-operator "gc")
(require 'evil-nerd-commenter)

(provide 'setup-evil-mode)
