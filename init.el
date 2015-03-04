;;; load-path
;; site-lisp を追加
;;(add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp/"))
;; ~/.emacs.d/site-lisp/ 以下のサブディレクトリを全部追加
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp/")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

;;; package.el
(require 'package)
;;(setq package-user-dir (expand-file-name "~/.emacs.d/elpa/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;;; auto-install by package.el
(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    init-loader
    migemo
    redo+
    php-mode
    web-mode
    ;; color-theme-sanityinc-solarized
    ;; solarized-theme
    recentf-ext
    ))

(let ((not-installed (loop for x in installing-package-list
                           when (not (package-installed-p x))
                           collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))

;;; init-loader
(require 'init-loader)
;;(setq init-loader-show-log-after-init t)
(setq init-loader-byte-compile t)
(init-loader-load (expand-file-name "~/.emacs.d/inits/"))
