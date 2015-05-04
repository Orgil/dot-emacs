;;; disable splash screen
(setq inhibit-startup-screen t
      inhibit-startup-echo-area-message t
      inhibit-startup-message t
      initial-scratch-message nil)

;;; no backup files
(setq make-backup-files nil)
;;; show other pair of brackets
(show-paren-mode t)

(setq ns-use-native-fullscreen nil)
(sit-for 0)
(toggle-frame-fullscreen)
;;; disable toolbar
(tool-bar-mode 0)
;;; disable menubar
(menu-bar-mode 0)
;;; disable scrollbar
(scroll-bar-mode -1)
(set-fill-column 100)
(column-number-mode 1)

;; break long lines at word boundaries
(visual-line-mode 1)

(setq-default cursor-type 'box)
(setq-default tab-width 2)

(setq-default indent-tabs-mode nil
              initial-major-mode 'text-mode
              default-major-mode 'text-mode
              )
(setq-default line-spacing 2)

(setq case-fold-search t)
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

;;; auto indent
(electric-indent-mode +1)

; ;; A small minor mode to use a big fringe
; (defvar bzg-big-fringe-mode nil)
; (define-minor-mode bzg-big-fringe-mode
;   "Minor mode to use big fringe in the current buffer."
;   :init-value nil
;   :global t
;   :variable bzg-big-fringe-mode
;   :group 'editing-basics
;   (if (not bzg-big-fringe-mode)
;       (set-fringe-style nil)
;     (set-fringe-mode
;      (/ (- (frame-pixel-width)
;            (* 100 (frame-char-width)))
;         2))))
;
; ;; Now activate this global minor mode
; (bzg-big-fringe-mode 1)

;; To activate the fringe by default and deactivate it when windows
;; are split vertically, uncomment this:
;; (add-hook 'window-configuration-change-hook
;;           (lambda ()
;;             (if (delq nil
;;                       (let ((fw (frame-width)))
;;                         (mapcar (lambda(w) (< (window-width w) fw))
;;                                 (window-list))))
;;                 (bzg-big-fringe-mode 0)
;;               (bzg-big-fringe-mode 1))))

;; Use a minimal cursor
;; (setq default-cursor-type 'hbar)

;;; setting default font
(add-to-list 'default-frame-alist
             '(font . "Incosolata-dz for Powerline-12"))
;;; highlight current line
(global-hl-line-mode 1)
;;; line numbers
(global-linum-mode 1)
;;; customize line numbers
(setq linum-format
  (lambda (line) (propertize
     (format (let ((w (length (number-to-string (count-lines (point-min) (point-max))))))
       (concat " %" (number-to-string w) "d ")) line) 'face 'linum)))

; (line-number-mode t)
(column-number-mode t)

; if there is size information associated with text, change the text
; size to reflect it
(size-indication-mode t)

;; make both fringes 4 pixels wide
(fringe-mode 4)

; each line of text gets one line on the screen (i.e., text will run
; off the left instead of wrapping around onto a new line)
(setq default-truncate-lines t)
; truncate lines even in partial-width windows
(setq truncate-partial-width-windows t)

; (let ((display-table (or standard-display-table (make-display-table))))
;   (set-display-table-slot display-table 'vertical-border (make-glyph-code ?┃))
;   (setq standard-display-table display-table))

;;; set theme
(load-theme 'sanityinc-tomorrow-night 1)

;;; setup fringe and line number colors
(custom-set-faces
'(fringe ((t (:background "#1d1f21" :foreground "#de935f"))))
'(linum ((t (:background "#1d1f21" :foreground "#373b41" :slant normal))))
'(linum-highlight-face ((t (:inherit default :background "#1d1f21" :foreground "#f0c674")))))

;;; disable default exit
(global-unset-key "\C-x\C-c")
(setq confirm-kill-emacs 'y-or-n-p)

(provide 'core)
;;; core.el ends here
