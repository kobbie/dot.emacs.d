;;; Migemo辞書の場所
(setq migemo-dictionary (expand-file-name
                         "~/.emacs.d/etc/dict/migemo-dict"))
;;; 起動時に初期化も行う
(migemo-init)
