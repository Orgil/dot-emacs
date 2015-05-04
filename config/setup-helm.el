(setq helm-command-prefix-key "C-c h")
(global-unset-key (kbd "C-x c"))
(setq helm-quick-update t)
(setq helm-bookmark-show-location t)
(setq helm-buffers-fuzzy-matching t)
(setq helm-M-x-fuzzy-match t)
(setq helm-apropos-fuzzy-match t)
(setq helm-recentf-fuzzy-match t)
(setq helm-locate-fuzzy-match t)
(setq helm-file-cache-fuzzy-match t)
(setq helm-semantic-fuzzy-match t)
(setq helm-imenu-fuzzy-match t)
(setq helm-lisp-fuzzy-completion t)

(setq helm-swoop-pre-input-function #'ignore)
(setq helm-swoop-use-line-number-face t)
(setq helm-swoop-split-with-multiple-windows t)

(require 'helm)
(require 'helm-config)

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t)

(require 'helm-descbinds)
(require 'helm-swoop)
(require 'helm-projectile)
(helm-mode 1)
(helm-autoresize-mode t)

(provide 'setup-helm)
