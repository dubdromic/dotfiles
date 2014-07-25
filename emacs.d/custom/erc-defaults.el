(require 'erc-join)
;;(erc-autojoin-mode t)

;;(setq erc-autojoin-channels-alist
;;      '((".*\\.freenode.net" "#haskell")
;;        ("irc.foonetic.net" "#xkcd")))

(setq erc-kill-buffer-on-part t)
(setq erc-kill-server-buffer-on-quit t)

(setq erc-timestamp-only-if-changed-flag nil
      erc-timestamp-format "[%R-%m/%d] "
      erc-insert-timestamp-function 'erc-insert-timestamp-left)
