;;; C-h to backspace
(keyboard-translate ?\C-h ?\C-?)
;;(global-set-key "\C-h" 'delete-backward-char)

;;; C-Ret で矩形選択
;;; 詳しいキーバインド操作：http://dev.ariel-networks.com/articles/emacs/part5/
(cua-mode t)
(setq cua-enable-cua-keys nil)

;;; スクロールを一行ずつにする
;;(setq scroll-step 1)
