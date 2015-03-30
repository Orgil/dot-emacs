;; break long lines at word boundaries
(visual-line-mode 1)

;;; disable splash screen
(setq inhibit-startup-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t)
;;; no backup files
(setq make-backup-files nil)
;;; show other pair of brackets
(show-paren-mode t)

(setq ns-use-native-fullscreen nil)
(sit-for 0)
(toggle-frame-fullscreen)
;;; disable toolbar
(tool-bar-mode -1)
;;; disable menubar
(menu-bar-mode -1)
;;; disable scrollbar
(scroll-bar-mode -1)

(setq-default cursor-type 'bar)
(setq-default c-basic-indent 2)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
;;; disable blinking cursor
(blink-cursor-mode -1)

;;; erase trailing space before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;;; no more type yes
(defalias 'yes-or-no-p 'y-or-n-p)
;;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-postion 1)
;;; disable bell ring
(setq ring-bell-function 'ignore)


(provide 'core)
