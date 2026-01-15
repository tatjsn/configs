;; packages
;; vertico rainbow-delimiters xclip deadgrep hotfuzz
;; brew
;; ripgrep


(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(electric-pair-mode 1)
(unless (display-graphic-p)
  (xterm-mouse-mode 1)
  (xclip-mode 1)
)
(setq-default indent-tabs-mode nil)
(setq inhibit-splash-screen t)
(setq column-number-mode t)
(setq default-input-method "thai-kesmanee")
(setq make-backup-files nil)
(setq initial-scratch-message "\
;; C-\\ to toggle language
;; C-x C-0 to size buffer text
")

;; ido-mode
;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; (ido-mode 1)
;; (setq ffip-prefer-ido-mode t)
;; This works great with find-file-in-project (ffip)

;; rainbow-delimiters
(use-package rainbow-delimiters
  :config
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

;; better completion buffer
(use-package vertico
  :config
  (vertico-mode))

;; shortcuts
(global-set-key [f1] 'project-find-file)
;; faster rgrep
;; requires ripgrep binary
(global-set-key [f12] 'deadgrep)
(global-set-key [f15] 'other-window)

;; enable f15 and beyond
(define-key input-decode-map "\e[28~" [f15])

;; for vscode-like fuzzy search for project-find-file
(use-package hotfuzz
  :custom
  (completion-styles '(hotfuzz)))
