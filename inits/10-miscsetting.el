;;; タブをスペースで扱う
(setq-default indent-tabs-mode nil)

;;; タブ幅
;;(setq-default tab-width 4)

;;; yes or noをy or n
(fset 'yes-or-no-p 'y-or-n-p)

;;; ミニバッファの履歴を保存する
;;(savehist-mode 1)
;;; ミニバッファの履歴の保存数を増やす
;;(setq history-length 3000)

;;; Backup/Auto-save
(setq make-backup-files nil)
(setq auto-save-default nil)
;;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;;; enable editting compressed file
(auto-compression-mode t)

;;; 最後に改行を入れる。
(setq require-final-newline t)

;;; time-stamp
(add-hook 'before-save-hook 'time-stamp)
(setq time-stamp-pattern nil)

;;; symlinkは必ず追いかける
(setq vc-follow-symlinks t)

;;; Comment Style
(setq comment-style 'multi-line)
