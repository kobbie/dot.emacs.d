;;; Theme directory
(setq custom-theme-directory (expand-file-name "~/.emacs.d/themes/"))

;;; For Emacs24 and above
(when (>= emacs-major-version 24)

  ;;; Misterioso
  (load-theme 'misterioso t)

  ;;; Solarized Theme
  ;;(load-theme 'solarized-dark t)
  ;;(load-theme 'sanityinc-solarized-dark t)
)

;;; For Emacs23 and below
(when (< emacs-major-version 24)
  (require 'color-theme nil t)
  (when (featurep 'color-theme)
    (color-theme-initialize)
    (color-theme-clarity)
    )
)
