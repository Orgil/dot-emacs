;;; Init function --- Summary
;;; Commentary: instantly switch between buffers
(defun switch-to-previous-buffer ()
  "Switch to previously open buffer.
Repeated invocations toggle between the two most recently open buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(defun switch-to-buffer-other-frame--no-really (buffer-or-name)
  "Switch to buffer BUFFER-OR-NAME in the other frame."
  (interactive
   (list (read-buffer-to-switch "Switch to buffer in other frame: ")))
  (other-frame 1)
  (switch-to-buffer buffer-or-name nil t)
  (other-frame -1))

(global-set-key (kbd "C-x 5 b") 'switch-to-buffer-other-frame--no-really)

(provide 'init-functions)
