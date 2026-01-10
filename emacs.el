;; packages
;; vertico find-file-in-project rainbow-delimiters


(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(xterm-mouse-mode 1)
(electric-pair-mode 1)
(setq-default indent-tabs-mode nil)
(setq inhibit-splash-screen t)
(setq column-number-mode t)
(setq default-input-method "thai-kesmanee")
(setq make-backup-files nil)
(setq initial-scratch-message "\
;; C-\\ to toggle language
;; C-x C-0 to size buffer text
")

(setq completion-styles '(flex basic))
(setq completion-category-defaults nil)
(setq completion-category-overrides '((file (styles flex basic))))

;; ido-mode
;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; (ido-mode 1)
;; (setq ffip-prefer-ido-mode t)
;; This works great with find-file-in-project (ffip)

;; rainbow-delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; better completion buffer
(vertico-mode)

;; shortcuts
(global-set-key [f1] 'ffip)
(global-set-key [f12] 'rgrep)
