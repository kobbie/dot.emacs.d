;;; 行間
(setq-default line-spacing 0)

;;; tool-bar
(if window-system (tool-bar-mode -1))
;;; menu-bar
;;(menu-bar-mode -1)
;;; emacs -nw で起動した時にメニューバーを消す
(if window-system (menu-bar-mode 1) (menu-bar-mode -1))
;;; scroll-bar
;;(set-scroll-bar-mode -1)
;;(set-scroll-bar-mode 'right)

;;; タイトルバーにファイルのフルパス表示
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

;;; 行番号表示
;;(global-linum-mode t)
;;(set-face-attribute 'linum nil
;;                    :foreground "#800"
;;                    :height 0.9)
;;; 行番号フォーマット
;;(setq linum-format "%4d")

;;; フレームの透明度
;;(set-frame-parameter (selected-frame) 'alpha '(0.85))

;;; カーソルの点滅
;;(blink-cursor-mode -1)
