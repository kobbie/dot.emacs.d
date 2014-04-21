;;; Font設定
(if window-system
    (progn
      (set-face-attribute 'default nil
                          :family "Ricty"
                          :height 140)
      (set-fontset-font nil 'japanese-jisx0208
                        (font-spec :family "Hiragino Maru Gothic ProN"))
      (set-fontset-font nil 'katakana-jisx0201
                        (font-spec :family "Hiragino Maru Gothic ProN"))
))
