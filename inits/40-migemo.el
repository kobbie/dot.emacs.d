(when (and (executable-find "cmigemo")
           (require 'migemo nil t))
  ;; cmigemoを使う
  (setq migemo-command "cmigemo")
  ;; Migemoのコマンドラインオプション
  (setq migemo-options '("-q" "--emacs" "-i" "\a"))
  ;; Migemo辞書の場所
  ;; linux-migemo.el/windows-migemo.elでOSごとに設定
  ;;(setq migemo-dictionary "/usr/share/cmigemo/utf-8/migemo-dict")
  ;; cmigemoで必須の設定
  (setq migemo-user-dictionary nil)
  (setq migemo-regex-dictionary nil)
  ;; キャッシュの設定
  (setq migemo-use-pattern-alist t)
  (setq migemo-use-frequent-pattern-alist t)
  (setq migemo-pattern-alist-length 1024)
  ;; 辞書の文字コードを指定
  (setq migemo-coding-system 'utf-8-unix)
  ;; 起動時に初期化も行う
  ;;(migemo-init)
)
