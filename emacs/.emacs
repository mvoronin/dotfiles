(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)  ;; показывать позицию курсора по горизонтали
;; '(org-agenda-files "~/liveorg/.agenda_files")
 '(menu-bar-mode nil)  ;; не показывать меню
 '(tool-bar-mode nil)  ;; не показывать тулбар
 '(scroll-bar-mode nil)  ;; не показывать полосу прокрутки
)

;;; CUSTOMIZE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; disable showing cursor in not active windows
;; деактивировать курсор в неактивном окне
(setq cursor-in-non-selected-windows nil)
;; прокручивание текста на одну строку, а не на пол экрана, как по умолчанию
(setq scroll-step 1)
;; переключает фокус на другое окно с помощью сочетания клавиш "alt + arrow keys"
(windmove-default-keybindings 'meta)
;; разрешить отвечать y или n вместо yes или no
(fset 'yes-or-no-p 'y-or-n-p)
;; отображать названия буферов при переходе
(iswitchb-mode t)
;; сохранять сессию
(desktop-save-mode t)
;; подсвечивать скобки
(setq show-paren-mode t)
;; показывает позицию курсора в буфере в процентах.
(setq size-indication-mode t)
;; disable greeting
;; не показывать приветствие
(setq inhibit-startup-message t)

;;; HOT KEYS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; позволяет использовать Ctrl-C, Ctrl-X, Ctrl-V
(cua-mode t)
(setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour

;; Undo, redo
(global-set-key [(control z)] 'undo)

(global-set-key [f5] 'bookmark-set)
(global-set-key [C-f5] 'bookmark-jump)
(global-set-key [f7] 'grep)

;;; INTERFACE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'color-theme)
(defun color-theme-ccat-dark ()
  (interactive)
  (color-theme-install
   '(color-theme-ccat-dark
     ((foreground-color . "#a9eadf")
      (background-color . "Grey15") 
      (background-mode . dark))
     (bold ((t (:bold t))))
     (bold-italic ((t (:italic t :bold t))))
     (default ((t (nil))))
     
     (font-lock-builtin-face ((t (:italic t :foreground "#a96da0"))))
     (font-lock-comment-face ((t (:italic t :foreground "#bbbbbb"))))
     (font-lock-comment-delimiter-face ((t (:foreground "#666666"))))
     (font-lock-constant-face ((t (:bold t :foreground "#197b6e"))))
     (font-lock-doc-string-face ((t (:foreground "#3041c4"))))
     (font-lock-doc-face ((t (:foreground "gray"))))
     (font-lock-reference-face ((t (:foreground "white"))))
     (font-lock-function-name-face ((t (:foreground "#356da0"))))
     (font-lock-keyword-face ((t (:bold t :foreground "#bcf0f1"))))
     (font-lock-preprocessor-face ((t (:foreground "#e3ea94"))))
     (font-lock-string-face ((t (:foreground "#ffffff"))))
     (font-lock-type-face ((t (:bold t :foreground "#364498"))))
     (font-lock-variable-name-face ((t (:foreground "#7685de"))))
     (font-lock-warning-face ((t (:bold t :italic nil :underline nil 
					:foreground "yellow"))))
     (hl-line ((t (:background "#112233"))))
     (mode-line ((t (:foreground "#ffffff" :background "#333333"))))
     (region ((t (:foreground nil :background "#555555"))))
     (show-paren-match-face ((t (:bold t :foreground "#ffffff" 
				       :background "#050505")))))))
(color-theme-initialize)
(color-theme-ccat-dark)
;; highligth edit line
(global-hl-line-mode t)
;; hightlight color
(set-face-background 'hl-line "black")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
