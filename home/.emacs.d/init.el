
(set-language-environment  'utf-8)
(prefer-coding-system 'utf-8)

(global-set-key "\C-h" 'delete-backward-char)
(global-set-key "\C-c\C-h" 'help-command)
(global-set-key "\C-c;" 'comment-dwim)
(global-set-key "\C-t" 'other-window)

(electric-pair-mode 1)
(setq-default tab-width 4 indent-tabs-mode nil)
; (setq inhibit-startup-message t)
(column-number-mode t)
(global-linum-mode t)
(setq scroll-conservatively 1)
(show-paren-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
