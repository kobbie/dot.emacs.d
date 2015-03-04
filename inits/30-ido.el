(when (require 'ido nil t)
  ;;; use ido only for buffers, to turn off ido for filenames.
  ;;(ido-mode 'buffers)
  ;;; Buffer names to be ignored by ido
  (setq ido-ignore-buffers '("^ " "*Completions*" "*Shell Command Output*"
                             "*Messages*" "Async Shell Command"))
  )
