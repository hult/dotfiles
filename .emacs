(add-to-list 'load-path "~d00-aeh/site-lisp")

; Haskell mode
(setq auto-mode-alist
      (append auto-mode-alist
              '(("\\.[hg]s$"  . haskell-mode)
                ("\\.hi$"     . haskell-mode)
                ("\\.l[hg]s$" . literate-haskell-mode))))
(autoload 'haskell-mode "haskell-mode"
   "Major mode for editing Haskell scripts." t)
(autoload 'literate-haskell-mode "haskell-mode"
   "Major mode for editing literate Haskell scripts." t)

; Add the following lines according to which modules you want to use
(add-hook 'haskell-mode-hook 'turn-on-haskell-font-lock)
(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-hugs)

(add-hook 'java-mode-hook( lambda () (setq c-basic-offset 4)))
(standard-display-european 1)

(setq line-number-mode 't)
(setq column-number-mode 't)

(add-to-list 'load-path (expand-file-name "/pkg/jde/2.1.4"))
(require 'jde)

;; Färga området som markeras med CTRL-space
(transient-mark-mode t)

;; Ett markerat område kan tas bort med DEL eller skrivas över
(delete-selection-mode t)

;; Färgkoda
(global-font-lock-mode)

;; Matcha paranteser
(show-paren-mode)

;; Ser till att man inte kan gå längre än till slutet av filen.
(set-variable 'next-line-add-newlines nil)

;; Använd Stroustrups indentering -- han är ju inte dum i huvet
;; 020206 korrigering -- han är också dum i huvet
(add-hook 'c++-mode-hook (lambda() (c-set-style "stroustrup")))
;(add-hook 'c++-mode-hook (lambda() (setq c-indentation-style "stroustrup")))

;; i C vill vi använda bsd-indentering, även om Theo troligen är dum i
;; huvet
;; 030914 korrigering -- ja, det är han
;(add-hook 'c-mode-hook
;	  (lambda ()
;	    (c-set-style "bsd")
;	    (setq indent-tabs-mode nil)
;	    (setq c-basic-offset 4)
;	    )
;	  )

;; Citerad text i mail-mode ska vara grön
(add-hook 'mail-mode-hook
	  (lambda()
	    (custom-set-faces
	     '(font-lock-comment-face ((t (:foreground "Green")))))
	    (mail-text)
	    ))

(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cu" 'uncomment-region)

(iswitchb-default-keybindings)
(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(matlab-verify-on-save-flag nil)
 '(show-trailing-whitespace t))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )
