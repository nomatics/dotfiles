; Emacs config is written using org-mode

(setq vc-follow-symlinks t)
(setq emacs-dir (file-name-directory (or load-file-name buffer-file-name)))
(setq base-config (concat emacs-dir "base.config.org"))
(org-babel-load-file base-config)
(put 'upcase-region 'disabled nil)
