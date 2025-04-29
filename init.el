;;; badli.el --- Badli Emacs init configuration -*- lexical-binding: t -*-

;; Copyright (C) 2021,2025 Badli Al Rashid

;; Author  :    Badli Rashid
;; Created :    2025-APR-29
;; URL     :    https://g.dev/badlialrashid
;; Version :    0.1.10

;; This file is NOT part of GNU Emacs.

;;; Commentary:

;; badli boring init.el configuration file for GNU Emacs
;; just the default nothing much!

;;; Licenses:

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU Gener(fboual Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

;;;; Theme
; (load-theme 'wombat)

;;;; fboundp
(if (fboundp 'tool-bar-mode)
    (tool-bar-mode nil))
(if (fboundp 'inhibit-default-init)
    (inhibit-default-init nil))
(if (fboundp 'tooltip-mode)
    (tooltip-mode nil))
(if (fboundp 'modifier-bar-mode)
    (modifier-bar-mode t))
(if (fboundp 'scroll-bar-mode)
    (scroll-bar-mode nil))
(if (fboundp 'column-number-mode)
    (column-number-mode t))
(if (fboundp 'line-number-mode)
    (line-number-mode t))

;;;; User Details
(setq user-full-name
      "BADLI AL RASHID")
(setq user-mail-address
      "theothernighttheotherday@gmail.com")

;;;; coding Systems
(setq keyboard-coding-system
      'utf-8-unix)
(setq terminal-coding-system
      'utf-8-unix)
(setq default-coding-systems
      'utf-8-unix)
(setq prefer-coding-system
      'utf-8-unix)

;;;; Setup defaults
(setq inhibit-startup-message t)
(setq initial-major-mode 'text-mode)
(setq initial-scratch-message nil)
(setq use-dialog-box nil)
(setq tramp-mode nil)
(setq fill-column 80)
(setq indent-tabs-mode nil)
(setq vc-follow-symlinks t)
(setq select-enable-clipboard t)

;;; icon/frame title format
(setq icon-title-format
      (setq frame-title-format "[ %f ]"))

;;;;; Backup Options
(setq make-backup-files nil)
(setq version-control nil)

;;;; Requires
(require 'package)


(package-initialize)

;;;; Begins
(fset 'yes-or-no-p 'y-or-n-p)

;;;; Colors or Colours ?
(setenv "LANG" "en_GB.UTF8")
(setq ispell-program-name "aspell")
(setq ispell-extra-args '("-l en_GB -a"))
(setq ispell-dictionary "en_GB")

(defun turn-code-feature-on ()
 "Turn on code features."
  (display-line-numbers-mode t)
  (electric-pair-local-mode t)
  (setq show-paren-delay 0)
  (show-paren-mode t))

(defun turn-text-feature-on ()
 "Turn on code features."
  (display-line-numbers-mode t)
  (setq tab-width 4))

;;;; Add our hooks
(add-hook 'prog-mode-hook
	  #'turn-code-feature-on)
(add-hook 'text-mode-hook
	  #'turn-text-feature-on)

;;;; KEYS
(setq ns-command-modifier
      'command)
(setq ns-left-command-modifier
      'command)
(setq ns-option-modifier
      'option)
(setq ns-left-option-modifier
      'option)
(setq ns-control-modifier
      'control)
(setq ns-right-control-modifier
      'control)
(setq ns-function-modifier
      'ns)

;; delete 
(global-set-key (kbd "C-d")
		'Buffer-menu-delete)
;; delete word
(global-set-key (kbd "M-d")
		'kill-word)
;; cut copy paste
(global-set-key (kbd "C-w")
		'kill-region)
(global-set-key (kbd "M-w")
		'kill-ring-save)
(global-set-key (kbd "C-y")
		'yank)
;; undo redo 
(global-set-key (kbd "C-/")
		'undo)
(global-set-key (kbd "C-M-/")
		'undo-redo)
;; open file
(global-set-key (kbd "C-x C-f")
		'find-file)
;; save buffer
(global-set-key (kbd "C-x C-s")
		'save-buffer)
;; write to file 
(global-set-key (kbd "C-x C-w")
		'write-file)
;; save and quit
(global-set-key (kbd "C-x C-c")
		'save-buffers-kill-terminal)
;; goto line
(global-set-key (kbd "M-g g")
		'goto-line)
;; buffer
(global-set-key (kbd "C-x b")
		'switch-to-buffer)
(global-set-key (kbd "C-x <LEFT>")
		'previous-buffer)
(global-set-key (kbd "C-x <RIGHT>")
		'next-buffer)
;; Delete, Create, Windows
(global-set-key (kbd "C-x 0")
		'delete-window)
(global-set-key (kbd "C-x 1")
		'delete-other-windows)
(global-set-key (kbd "C-x 2")
		'split-window-below)
(global-set-key (kbd "C-x 3")
		'split-window-right)
;; Search
(global-set-key (kbd "C-s")
		'isearch-forward-regexp)
(global-set-key (kbd "C-r")
		'isearch-backward-regexp)
(global-set-key (kbd "C-M-s")
		'isearch-forward)
(global-set-key (kbd "C-M-r")
		'isearch-backward)

(provide 'init)
;;; init.el ends here
