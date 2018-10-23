(setq inhibit-startup-screen t) ;; to avoid the start up screen
;;(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode -1)
(set-default-font "Ubuntu Mono-12")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wombat))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(display-time-mode 1) ;; for displaying time

(add-to-list 'initial-frame-alist '(fullscreen . maximized))
;; for maximize the window in startup

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config
  (which-key-mode))

;; org-mode stuff
(use-package org-bullets
  :ensure t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))

;; buffer suggestions
;; Interactively Do things
(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; Path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

(pdf-tools-install)

(setq TeX-view-program-selection '((output-pdf "PDF Tools"))
        TeX-source-correlate-start-server t)



  
