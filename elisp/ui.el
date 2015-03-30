; (set-default-font "Inconsolata 12")
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
