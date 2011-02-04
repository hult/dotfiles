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

(setq line-number-mode 't)
(setq column-number-mode 't)

;; Färga området som markeras med CTRL-space
(transient-mark-mode t)

;; Ett markerat område kan tas bort med DEL eller skrivas över
(delete-selection-mode t)

;; Matcha paranteser
(show-paren-mode)

;; Ser till att man inte kan gå längre än till slutet av filen.
(set-variable 'next-line-add-newlines nil)

(global-set-key "\C-cg" 'goto-line)
(global-set-key "\C-cu" 'uncomment-region)

(ido-mode)

(custom-set-variables
  ;; custom-set-variables was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 '(show-trailing-whitespace t))
(custom-set-faces
  ;; custom-set-faces was added by Custom -- don't edit or cut/paste it!
  ;; Your init file should contain only one such instance.
 )
