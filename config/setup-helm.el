(setq helm-command-prefix-key "C-c h")
(global-unset-key (kbd "C-x c"))


(setq helm-quick-update t)
(setq helm-bookmark-show-location t)

;;; enable fuzzy matching
(setq helm-lisp-fuzzy-completion t)
(setq helm-recentf-fuzzy-match t)
(setq helm-buffers-fuzzy-matching t)
(setq helm-file-cache-fuzzy-match t)
(setq helm-locate-fuzzy-match t)
(setq helm-M-x-fuzzy-match t)
(setq helm-semantic-fuzzy-match t)
(setq helm-imenu-fuzzy-match t)
(setq helm-apropos-fuzzy-match t)
;;; autosave
(setq helm-make-do-save t)

(global-set-key (kbd "M-x") 'helm-M-x)


(require 'helm)
(require 'helm-config)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to do persistent action
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(defun my-c++-mode-hook ()
  (define-key c++-mode-map (kbd "C-;") 'helm-make-projectile))

(add-hook 'c++-mode-hook 'my-c++-mode-hook)


(require 'helm-descbinds)
(helm-descbinds-mode)

(require 'helm-swoop)
(setq helm-swoop-pre-input-function #'ignore)
(setq helm-swoop-use-line-number-face t)
(setq helm-swoop-split-with-multiple-windows t)

;; Change the keybinds to whatever you like :)
(global-set-key (kbd "C-c h o") 'helm-swoop)
(global-set-key (kbd "C-c s") 'helm-multi-swoop-all)
;; When doing isearch, hand the word over to helm-swoop
(define-key isearch-mode-map (kbd "M-i") 'helm-swoop-from-isearch)
;; From helm-swoop to helm-multi-swoop-all
(define-key helm-swoop-map (kbd "M-i") 'helm-multi-swoop-all-from-helm-swoop)
;; Save buffer when helm-multi-swoop-edit complete
(setq helm-multi-swoop-edit-save t)
;; If this value is t, split window inside the current window
(setq helm-swoop-split-with-multiple-windows t)
;; Split direcion. 'split-window-vertically or 'split-window-horizontally
(setq helm-swoop-split-direction 'split-window-vertically)
;; If nil, you can slightly boost invoke speed in exchange for text color
(setq helm-swoop-speed-or-color t)

(require 'helm-projectile)
(helm-mode 1)
(helm-autoresize-mode t)

(provide 'setup-helm)
