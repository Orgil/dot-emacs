(setq user-full-name "Orgil"
      user-mail-address "orgil.u@gmail.com")

;;; loading package manager
(require 'package)
(setq package-enable-at-startup nil)

(setq init-home-dir (file-name-directory user-init-file))
(setq cache-dir (concat (file-name-directory user-init-file) ".cache"))
(add-to-list 'load-path
             (expand-file-name "config" init-home-dir))
;;; here we're adding extra package repo
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

;;; ensuring packages installed if not install it
(require 'ensure-packages)
(ensure-packages-install-missing)

(require 'core)
(require 'init-functions)

;;; Plugins
(require 'setup-evil-mode)
(require 'setup-hlinum)
(require 'setup-rainbow-delimiters)
(require 'setup-yassnippet)
(require 'setup-smart-mode-line)
(require 'setup-helm)
(require 'setup-projectile)
(require 'setup-flycheck)
(require 'setup-company)
(require 'setup-git-gutter)
(require 'setup-irony)
(require 'setup-neotree)
(require 'setup-webmode)
(require 'setup-origami)
(require 'setup-handlebars-mode)
(require 'setup-emmet-mode)
(require 'setup-magit)
(require 'setup-dash)
(require 'setup-cedet)
(require 'setup-js2-mode)

(require 'saveplace)
(setq save-place-file "~/.emacs.d/saveplace")
(setq-default save-place t)
;
; ;;; multiterm
; (require 'multi-term)
; (setq multi-term-program "/bin/zsh")
;
(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(flycheck-highlighting-mode (quote symbols))
 '(flycheck-indication-mode (quote right-fringe))
 '(global-semantic-decoration-mode t)
 '(global-semantic-idle-completions-mode t nil (semantic/idle))
 '(global-semantic-idle-local-symbol-highlight-mode t nil (semantic/idle))
 '(global-semantic-idle-scheduler-mode t)
 '(global-semantic-idle-summary-mode t)
 '(global-semanticdb-minor-mode t)
 '(js2-basic-offset 2)
 '(neo-theme (quote nerd))
 '(semantic-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fringe ((t (:background "#1d1f21" :foreground "#de935f"))))
 '(linum ((t (:background "#1d1f21" :foreground "#373b41" :slant normal))))
 '(linum-highlight-face ((t (:inherit default :background "#1d1f21" :foreground "#f0c674"))))
 '(semantic-tag-boundary-face ((t (:overline "SteelBlue4")))))
