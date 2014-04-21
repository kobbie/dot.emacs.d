;;; Font設定
(if window-system
    (progn
      (set-face-attribute 'default nil
                          :family "Inconsolata"
                          :height 100)
      (set-fontset-font nil 'japanese-jisx0208
                        (font-spec :family "TakaoGothic"))
      (set-fontset-font nil 'katakana-jisx0201
                        (font-spec :family "TakaoGothic"))
))
