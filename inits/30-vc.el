(setq vc-enabled-backends nil
      vc-handled-backends nil)
(remove-hook 'find-file-hook 'vc-find-file-hook)
(remove-hook 'kill-buffer-hook 'vc-kill-buffer-hook)
