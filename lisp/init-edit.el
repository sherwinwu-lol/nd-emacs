
;; ----------------------------------------Display
;; 光标
(setq-default cursor-type 'bar)
;; 高亮当前行
(global-hl-line-mode 1)
;; 显示相对行号
(global-display-line-numbers-mode 1)
(setq-default display-line-numbers-type 'relative)

;; ----------------------------------------Search
;; --------------------Search
;; 补全系统
(use-package ivy
  :config (ivy-mode 1)
  )
;; 搜索功能  
(use-package swiper)
;; 常用命令
(use-package counsel
  :config (counsel-mode 1))
(use-package avy
  :ensure t
  )
;; --------------------Replace

;; ----------------------------------------edit
;; 设置自动换行字数
(setq-default fill-column 1024)
;; 临时标记模式
(setq-default transient-mark-mode nil)
;;选中输入时,替换而不是增加
(delete-selection-mode 1)
;; 关闭缩进
;; (electric-indent-mode -1)
;; --------------------兼容windows编码
(when (fboundp 'set-charset-priority)
  (set-charset-priority 'unicode))
(prefer-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(setq system-time-locale "C")
(unless (eq system-type 'windows-nt)
  (set-selection-coding-system 'utf-8))
(setq default-buffer-file-coding-system 'utf-8-unix)
;; --------------------Font
;; 字体大小
;;(set-face-attribute 'default nil :height 105)
;; 字体行间距
(setq-default line-spacing 0.2)
;; undo
(use-package undo-tree
  :ensure t
  :init (global-undo-tree-mode 1)
  :config
  (define-key evil-normal-state-map
    "u" 'undo-tree-undo
    )
  )
;; --------------------多光标操作

;; ----------------------------------------Abbreviation
(setq-default abbrev-mode t)
(read-abbrev-file "~/.emacs.d/abbrev_defs")
;; ----------------------------------------Flyspell
(flyspell-mode t)

(provide 'init-edit)
