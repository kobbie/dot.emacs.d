;;; IMEの設定
(setq default-input-method "W32-IME")
(global-set-key [M-kanji] 'ignore)

;; Windows IME の ON/OFF をモードラインに表示
;;(setq w32-ime-show-mode-line t)
(setq-default w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator-list '("[--]" "[あ]" "[--]"))

;; IME の初期化
(w32-ime-initialize)

;; IME の ON/OFF でカーソルの色を変える。
(add-hook 'w32-ime-on-hook '(lambda () (set-cursor-color "coral4")))
(add-hook 'w32-ime-off-hook '(lambda () (set-cursor-color "black")))

;; IMEの制御（yes/noをタイプするところでは IME をオフにする）
(wrap-function-to-control-ime 'universal-argument t nil)
(wrap-function-to-control-ime 'read-string nil nil)
(wrap-function-to-control-ime 'read-char nil nil)
(wrap-function-to-control-ime 'read-from-minibuffer nil nil)
(wrap-function-to-control-ime 'y-or-n-p nil nil)
(wrap-function-to-control-ime 'yes-or-no-p nil nil)
(wrap-function-to-control-ime 'map-y-or-n-p nil nil)
