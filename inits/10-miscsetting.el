;;; タブをスペースで扱う
(setq-default indent-tabs-mode nil)

;;; タブ幅
;;(setq-default tab-width 4)

;;; yes or noをy or n
;;(fset 'yes-or-no-p 'y-or-n-p)

;;; 最近使ったファイルをメニューに表示
(recentf-mode t)
;;; 最近使ったファイルの表示数
(setq recentf-max-menu-items 10)
;;; 最近開いたファイルの保存数を増やす
(setq recentf-max-saved-items 3000)

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
