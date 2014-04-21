(when (require 'whitespace nil t)
  ;; see whitespace.el for more details
  (setq whitespace-style '(face trailing empty tabs tab-mark spaces space-mark))
  (setq whitespace-display-mappings
        '((space-mark ?\u3000 [?\u25a1])
          ;; WARNING: the mapping below has a problem.
          ;; When a TAB occupies exactly one column, it will display the
          ;; character ?\xBB at that column followed by a TAB which goes to
          ;; the next TAB column.
          ;; If this is a problem for you, please, comment the line below.
          (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))
  ;; スペースは全角のみを可視化
  (setq whitespace-space-regexp "\\(\u3000+\\)")
  ;; Face settings
  (set-face-attribute 'whitespace-trailing nil
                      :foreground "#d33682" ;;Magenta
                      :underline t)
  (set-face-attribute 'whitespace-tab nil
                      :foreground "#268bd2" ;;Blue
                      :underline t)
  (set-face-attribute 'whitespace-space nil
                      :foreground "#b58900" ;;Yellow
                      :background nil
                      :weight 'bold)
  (set-face-attribute 'whitespace-empty nil
                      :background "#cb4b16" ;;Orange
                      :underline nil)
  ;; 保存前に自動でクリーンアップ
  ;;(setq whitespace-action '(auto-cleanup))
  ;;(global-whitespace-mode t)
  ;; keymap
  ;;(global-set-key (kbd "C-x w") 'global-whitespace-mode)
)
