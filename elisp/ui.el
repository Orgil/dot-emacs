;;; ui setting
(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;;; line numbering
(line-number-mode t)
(setq-default cursor-type 'bar)
; (column-number-mode 1)
; (size-indication-mode 1)

;;; disable blinking cursor
(blink-cursor-mode -1)

;;; disable startup screen
;;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-postion 1)
;;; disable bell ring
(setq ring-bell-function 'ignore)

;;; start maximized
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized))))) ;; start maximized
; ;; more useful frame title
; (setq frame-title-format
;       '("" invocation-name (:eval (if (buffer-file-name)
;                                     (abbreviate-file-name (buffer-file-name))
;                                     "%b"))))
;;; set theme
(load-theme 'sanityinc-tomorrow-night 1)
(provide 'ui)
