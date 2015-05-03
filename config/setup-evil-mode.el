(require 'evil)
(evil-mode 1)

;;; window navigation
(define-key evil-normal-state-map (kbd "C-h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "C-j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "C-k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "C-l") 'evil-window-right)

(require 'evil-leader)
(global-evil-leader-mode t)

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
