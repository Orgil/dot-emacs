(require 'package)
(require 'cl)
(package-initialize)

(setq url-http-attempt-keepalives nil)

(defvar ensure-packages
     '(
       color-theme-sanityinc-tomorrow
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
       smart-mode-line
       projectile
       helm
       helm-descbinds
       helm-swoop
       helm-make
       helm-projectile
       irony
       yasnippet
       swift-mode
       web-mode
       php-mode
       rainbow-mode
       rainbow-delimiters
       hlinum ;; highlight current line number
       magit ;; git
       markdown-mode
       git-gutter-fringe
       php-mode
       neotree
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
