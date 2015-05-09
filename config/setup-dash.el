(require 'helm-dash)

(setq helm-dash-common-docsets '("C++" "OpenCV C++"))

(defun eww-split (url)
  (interactive)
  (select-window (split-window-right))
  (eww url))
(setq helm-dash-browser-func 'eww-split)

(provide 'setup-dash)
