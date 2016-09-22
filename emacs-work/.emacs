(setq visible-bell t)

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;;;(add-hook 'prog-mode-hook
;;;	    '(lambda ()
;;;	            (yas-minor-mode)))


;;; highlight current line
;;;(global-hl-line-mode 1)
(package-initialize)

;;; indent 2
(setq standard-indent 2)

;;; no backup files
(setq make-backup-files nil) 

;;; line numbering on the left
(global-linum-mode 1)

(setq line-number-mode t)
(setq column-number-mode t)

(autoload 'haxe-mode "haxe-mode" "Major mode for editing Haxe code." t)
(add-to-list 'auto-mode-alist '("\\.hx\\'" . haxe-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (misterioso)))
 '(delete-selection-mode nil)
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(size-indication-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight bold :height 143 :width normal)))))

(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;; cursor in rot
(set-cursor-color "#ff0000")
