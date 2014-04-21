;;; Last modified: <10/27/2013 09:34:25 UTC by skobayashi>

;;; IMEの設定
(setq default-input-method "W32-IME")
(w32-ime-initialize) ;;IME の初期化
(global-set-key [M-kanji] 'ignore)

;; Windows IME の ON/OFF をモードラインに表示
(setq w32-ime-show-mode-line t)

;; IME mode-line indicator
;; ON  : [あ] OFF : [--]
(setq-default w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator "[--]")
(setq w32-ime-mode-line-state-indicator-list
      '("[--]" "[あ]" "[--]"))

;; IME の ON/OFF でカーソルの色を変える。
(add-hook 'w32-ime-on-hook
          (lambda () (set-cursor-color "brown")))
(add-hook 'w32-ime-off-hook
          (lambda () (set-cursor-color "black")))

;; IMEの制御（yes/noをタイプするところでは IME をオフにする）
(wrap-function-to-control-ime 'universal-argument t nil)
(wrap-function-to-control-ime 'read-string nil nil)
(wrap-function-to-control-ime 'read-char nil nil)
(wrap-function-to-control-ime 'read-from-minibuffer nil nil)
(wrap-function-to-control-ime 'y-or-n-p nil nil)
(wrap-function-to-control-ime 'yes-or-no-p nil nil)
(wrap-function-to-control-ime 'map-y-or-n-p nil nil)

;; Local Variables:
;; coding: utf-8
;; time-stamp-pattern: "8/Last modified:[ \t]+\\\\?[\"<]+%02m/%02d/%:y %02H:%02M:%02S %Z by %u\\\\?[\">]"
;; time-stamp-time-zone: "UTC"
;; End:
