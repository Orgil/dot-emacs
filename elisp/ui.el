; (set-default-font "Inconsolata 12")
;;; start maximized
; (custom-set-variables
;  '(initial-frame-alist (quote ((fullscreen . maximized))))) ;; start maximized
; ;; more useful frame title
; (setq frame-title-format
;       '("" invocation-name (:eval (if (buffer-file-name)
;                                     (abbreviate-file-name (buffer-file-name))
;                                     "%b"))))
(set-default-font "Inconsolata-dz for Powerline 12")
(global-hl-line-mode 1)
(global-linum-mode 1)
(line-number-mode t)
(column-number-mode t)

; if there is size information associated with text, change the text
; size to reflect it
(size-indication-mode t)


;; make both fringes 4 pixels wide
(fringe-mode 4)

; (setq overflow-newline-into-fringe t)
; each line of text gets one line on the screen (i.e., text will run
; off the left instead of wrapping around onto a new line)
(setq default-truncate-lines t)
; truncate lines even in partial-width windows
(setq truncate-partial-width-windows t)

(let ((display-table (or standard-display-table (make-display-table))))
  (set-display-table-slot display-table 'vertical-border (make-glyph-code ?┃))
  (setq standard-display-table display-table))
;;; set theme
(load-theme 'sanityinc-tomorrow-night 1)
(provide 'ui)
