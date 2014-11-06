;; If you stare into PHP long enough it starts to stare back.

(add-hook 'php-mode-hook 'symbol-lookup-hook)

(defun symbol-lookup-hook ()
  (local-set-key (kbd "<f1>") 'php-symbol-lookup))

(defun php-symbol-lookup ()
  (interactive)
  (let ((symbol (symbol-at-point)))
    (if (not symbol)
        (message "No symbol at point.")
      (browse-url (concat "http://php.net/manual-lookup.php?pattern="
                          (symbol-name symbol))))))
