(require 'package)
(require 'cl)
(package-initialize)

(setq url-http-attempt-keepalives nil)

(defvar ensure-packages
     '(
       color-theme-sanityinc-tomorrow
       ag
       evil
       evil-leader
       evil-nerd-commenter
       evil-surround
       evil-exchange
       evil-matchit
       evil-indent-textobject
       evil-visualstar
       evil-numbers
       cmake-font-lock
       company
       company-quickhelp
       company-irony
       company-c-headers
       smart-mode-line
       projectile
       origami ;;; for folding
       realgud ;;; c debuging
       dash ;;; docs
       helm
       helm-dash
       helm-descbinds
       helm-swoop
       helm-make
       helm-projectile
       helm-ag
       irony
       yasnippet
       swift-mode
       web-mode
       json-mode
       handlebars-mode
       php-mode
       robe
       rainbow-mode
       rainbow-delimiters
       hlinum ;; highlight current line number
       magit ;; git
       markdown-mode
       git-gutter-fringe
       android-mode
       gradle-mode
       php-mode
       emmet-mode
       ember-mode
       neotree
       js2-mode
       scss-mode
       ; tern
       ; company-tern
       flycheck
       flycheck-irony
       flycheck-pos-tip
       )
     "A list of packages to ensure are installed at launch.")

(defun ensure-packages-package-installed-p (p)
  (cond ((package-installed-p p) t)
        (t nil)))

(defun ensure-packages-installed-p ()
  (mapcar 'ensure-packages-package-installed-p ensure-packages))

(defun ensure-packages-install-missing ()
  (interactive)
  (unless (every 'identity (ensure-packages-installed-p))
    ;; check for new packages (package versions)
    (message "%s" "Emacs is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (dolist (p ensure-packages)
      (when (not (package-installed-p p))
        (package-install p)))))

(provide 'ensure-packages)
