;; Are we on MacOS X?
(defvar macosx-p (string-match "darwin" (symbol-name system-type)))

;; Command is meta, option is nothing (which means I can use stuff
;; like option-8 for [ as we do on Swedish keyboard layouts)
(if macosx-p
    (progn
      (setq mac-command-modifier 'meta)
      (setq mac-option-modifier nil)))

;; Set up the site-lisp directory (some of this is probably redundant)
(add-to-list 'load-path "~/.emacs.d/site-lisp")

(setq emacs-config-path "~/.emacs.d/")
(setq base-lisp-path "~/.emacs.d/site-lisp/")
(setq site-lisp-path (concat emacs-config-path "/site-lisp"))
(defun add-path (p)
  (add-to-list 'load-path (concat base-lisp-path p)))

(add-path "")
(add-path "pymacs")
(add-path "python-mode")
(add-to-list 'load-path "~/.emacs.d")

;; python-mode
;;
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode) interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)


(setq pymacs-load-path '(   "~/.emacs.d/site-lisp/rope"
                                                "~/.emacs.d/site-lisp/ropemode"
                            "~/.emacs.d/site-lisp/ropemacs"))

(setq interpreter-mode-alist
      (cons '("python" . python-mode)
        interpreter-mode-alist)
      python-mode-hook
      '(lambda () (progn
            (set-variable 'py-indent-offset 4)
            (set-variable 'py-smart-indentation nil)
            (set-variable 'indent-tabs-mode nil)
            ;;(highlight-beyond-fill-column)
                    (define-key python-mode-map "\C-m" 'newline-and-indent)
            (pabbrev-mode)
            (abbrev-mode)
     )
      )
)

;; pymacs
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)

;; Search local path for emacs rope
;;

;; enable pymacs
;;
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")

;; Show line and column numbers
(setq line-number-mode 't)
(setq column-number-mode 't)

;; Color mark
(transient-mark-mode t)

;; Remove selection on modify
(delete-selection-mode t)

;; Show matching parenthesis
(show-paren-mode)

;; Can't go past last line of file
(set-variable 'next-line-add-newlines nil)

;; Nice keybindings
(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cu" 'uncomment-region)

;; Nice buffer switching mode, but where's iswitchb nowadays? :/
(ido-mode)

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(show-trailing-whitespace t))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )
