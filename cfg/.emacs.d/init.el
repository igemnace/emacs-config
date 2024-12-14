(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(eval-when-compile
  (require 'use-package))

(use-package magit
  :ensure t)

(use-package org
  :ensure t
  :bind (("C-c l" . 'org-store-link)
	 ("C-c a" . 'org-agenda)
	 ("C-c c" . 'org-capture))
  :config (setq org-agenda-files '("~/org")))

(use-package vertico
  :ensure t
  :config (vertico-mode))

(use-package smartparens
  :ensure t
  :hook (prog-mode text-mode)
  :config (require 'smartparens-config))

(use-package base16-theme
  :ensure t
  :config (load-theme 'base16-eighties t))

(use-package mood-line
  :ensure t
  :config (mood-line-mode))

;; remove gui elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; always follow symlinks
(setq vc-follow-symlinks t)

;; auto-fill in text buffers
(add-hook 'text-mode-hook 'auto-fill-mode)

;; Backup files behavior
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.emacs.d/tmp"))
 delete-old-versions t
 kept-new-versions 5)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(base16-theme mood-line smartparens vertico)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
