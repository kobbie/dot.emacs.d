(when (require 'iswitchb nil t)
  (iswitchb-mode t)
  (setq iswitchb-buffer-ignore '("^ " "*Buffer"))

  ;; keymap
  (defun iswitchb-local-keys ()
    (define-key iswitchb-mode-map [right] 'iswitchb-next-match)
    (define-key iswitchb-mode-map [left] 'iswitchb-prev-match)
    (define-key iswitchb-mode-map "\C-f" 'iswitchb-next-match)
    (define-key iswitchb-mode-map " " 'iswitchb-next-match)
    (define-key iswitchb-mode-map "\C-b" 'iswitchb-prev-match)
    )
  (add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)
)
