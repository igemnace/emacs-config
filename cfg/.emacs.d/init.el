;; Package Setup
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/"))
(setq package-enable-at-startup nil)
(package-initialize)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

;; SLIME
(setq inferior-lisp-program "/usr/bin/sbcl")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/slime/")
(require 'slime)
(slime-setup)

;; Ivy
(require 'ivy)
(ivy-mode 1)

;; Counsel
(require 'counsel)
(counsel-mode)

;; Dired
(defun configure-dired () "Set up needed config for Dired."
       (local-set-key (kbd "C-x C-f") 'find-file))
(add-hook 'dired-mode-hook #'configure-dired)

;; Org
(global-set-key (kbd "C-x M-o") 'org-agenda)
(defun configure-org () "Set up needed config for Org mode."
       (set-fill-column 80)
       (auto-fill-mode))
(add-hook 'org-mode-hook #'configure-org)

;; ParEdit
(autoload #'enable-paredit-mode "paredit" "Enable paredit." t)
(add-hook 'emacs-lisp-mode-hook #'enable-paredit-mode)
(add-hook 'lisp-mode-hook #'enable-paredit-mode)

;; GH-MD
(autoload #'gh-md-render-buffer "gh-md" "Render buffer with GH-MD." t)
(defun configure-gh-md () "Set up needed config for GH-MD."
       (local-set-key (kbd "C-c C-c p") 'gh-md-render-buffer))
(add-hook 'markdown-mode-hook #'configure-gh-md)

;; Company
(require 'company)
(add-to-list 'company-backends 'company-tern)
(global-company-mode)

;; JavaScript
(defun configure-javascript () "Set up Javascript-specific config."
       (flycheck-mode 1)
       (setq
	indent-tabs-mode nil
	js-indent-level 2))
(add-hook 'javascript-mode-hook #'configure-javascript)
(add-hook 'js2-mode-hook #'configure-javascript)

;; JSX
(defun run-react-native-menu () "Use adb to open React Native's dev menu."
       (interactive)
       (shell-command "adb shell input keyevent 82"))
(defun configure-jsx () "Set up JSX-specific config."
       (local-set-key (kbd "f5") #'run-react-native-menu))
(add-hook 'rjsx-mode-hook #'configure-jsx)

;; Theme
(load-theme 'base16-eighties t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)
(add-to-list 'default-frame-alist '(font . "Roboto Mono Light-9"))

;; Backup files behavior
(setq
 backup-by-copying t
 backup-directory-alist '(("." . "~/.emacs.d/tmp"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)

;; Auto-generated
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" default)))
 '(icomplete-mode nil)
 '(org-agenda-files (quote ("~/org/")))
 '(package-selected-packages
   (quote
    (rjsx-mode company-tern counsel ivy swiper projectile indium js2-mode gh-md markdown-mode company base16-theme flycheck magit paredit slime))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
