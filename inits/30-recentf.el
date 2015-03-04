;;; recentf

(when (require 'recentf nil t)
  ;;; recent ファイルの保存先
  (setq recentf-save-file "~/.emacs.d/recentf")
  ;;; 最近開いたファイルの保存数を増やす
  (setq recentf-max-saved-items 1000)
  ;;; 最近使ったファイルの表示数
  (setq recentf-max-menu-items 10)
  ;;; recentf ファイル自体を除外
  (setq recentf-exclude '(".recentf" "recentf"))
  ;;; 保存する内容を整理
  (setq recentf-auto-cleanup 10)
  ;;; 60秒ごとに recentf を保存
  (run-with-idle-timer 60 t 'recentf-save-list)
  ;;; 最近使ったファイルをメニューに表示
  (recentf-mode t)
)

;;; recentf-ext
(when (require 'recentf-ext) nil t)
