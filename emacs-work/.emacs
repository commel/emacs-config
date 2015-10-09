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

(autoload 'haxe-mode "haxe-mode" "Major mode for editing Lua code." t)
(add-to-list 'auto-mode-alist '("\\.hx\\'" . haxe-mode))
(add-to-list 'auto-mode-alist '("Gemfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (misterioso)))
 '(delete-selection-mode nil)
 '(inhibit-startup-screen t)
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(transient-mark-mode 1))

(defun decoit-replace-java-umlauts()
  (interactive)
  (goto-char (point-min))
  (replace-string "\\u{fc}" "ü")
  (goto-char (point-min))
  (replace-string "\\u{f6}" "ö")
  (goto-char (point-min))
  (replace-string "\\u{e4}" "ä")
  (goto-char (point-min))
  (replace-string "\\u{df}" "ß")
)


(defun decoit-remove-linebreaks()
  (interactive)
  (goto-char (point-min))
  (replace-string (byte-to-string 10) "")
)

(defun decoit-unquote-quotation-marks()
  (goto-char (point-min))
  (replace-string "\\\"" "\"")
)

(defun decoit-sanatize-json()
  (interactive)
  (decoit-remove-linebreaks)
  (decoit-unquote-quotation-marks)
  (decoit-replace-java-umlauts)
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 143 :width normal)))))
