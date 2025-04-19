;;; init.el --- Badli Emacs init configuration -*- lexical-binding: t -*-

;; Copyright (C) 2021,2025 Badli Al Rashid

;; Author  :    Badli Rashid
;; Created :    2025-APR-19
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

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Code:

;;;; Theme
(load-theme 'tsdh-dark)

;;;; Display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tooltip-mode) (tooltip-mode -1))
(if (fboundp 'column-number-mode) (column-number-mode 1))
(if (fboundp 'line-number-mode) (line-number-mode 1))

;;;; Encoding Systems
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;;;; User Details
(setq user-full-name "Badli Al Rashid")
(setq user-mail-address "theotherdaytheothernight@gmail.com")

;;;; Setup defaults
(setq inhibit-startup-message t)
(setq initial-major-mode 'text-mode)
(setq initial-scratch-message nil)
(setq use-dialog-box nil)
(setq tramp-mode nil)
(setq fill-column 80)
(setq tab-width 2)
(setq indent-tabs-mode nil)
(setq vc-follow-symlinks t)
(setq select-enable-clipboard t)

;;; icon/frame title format
(setq icon-title-format (setq frame-title-format "[ %f ]"))

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

;;;; IDO
(ido-mode)
(setq ido-everywhere 1)
(setq ido-enable-flex-matching 1)

(defun turn-code-feature-on ()
  "Turn on code features."
  (display-line-numbers-mode 1)
  (electric-pair-local-mode 1)
  (setq show-paren-delay 0)
  (show-paren-mode 1))

;;;; Add our hooks
(add-hook 'prog-mode-hook #'turn-code-feature-on)

;;;; KEYS
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)


(provide 'init)
;;; init.el ends here
