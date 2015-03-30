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

(defun startup-echo-area-message ()                           ; Use a more interesting startup message
  "Dein Wunsch, Meister?")

(autoload 'haxe-mode "haxe-mode" "Major mode for editing Lua code." t)
(add-to-list 'auto-mode-alist '("\\.hx\\'" . haxe-mode))
(custom-set-variables
 '(custom-enabled-themes (quote (wombat)))
 '(delete-selection-mode nil)
 '(mark-even-if-inactive t)
 '(scroll-bar-mode (quote right))
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
