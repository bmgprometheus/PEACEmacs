;;; init-custom-editor-basic.el -*- lexical-binding: t; -*-

;; Copyright (C) 2024  B.M. Gabriel <bmgabriel@protonmail.com>

;; Author: B.M. Gabriel <bmgabriel@protonmail.com>
;; Keywords: 

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; 

;;; Code:

;; PACKAGE: EMACS
;; GROUP: Editor -> Auto Formatting
(setq save-abbrevs 'silently)		; Abbrevs saved automatically
(remove-hook 'text-mode-hook		; Remove auto fill when
	     'turn-on-auto-fill)	; editing in text mode

;; PACKAGE: EMACS
;; GROUP: Editor -> Editing Assistance
(column-number-mode)			; Show col num for cursor
(global-display-line-numbers-mode t)	; show line num in editor

(dolist (mode '(org-mode-hook
		term-mode-hook
		shell-mode-hook
		treemacs-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda ()
		   (display-line-numbers-mode 0))))

(show-paren-mode 1)			; matching parenthesis
(setq show-paren-delay 0)

(provide 'init-custom-editor-basic)
;;; init-custom-editor-basic.el ends here
