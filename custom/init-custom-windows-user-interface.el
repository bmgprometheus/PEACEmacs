;;; init-custom-windows-user-interface.el -*- lexical-binding: t; -*-

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
;; GROUP: User Interface -> cursors
(setq-default blink-cursor-blinks 0)
(add-hook 'after-init-hook
	  (lambda ()
	    (setq blink-cusor-blinks 0)))

;; GROUP: User Interface -> numbering
(column-number-mode)
(global-display-line-numbers-mode t)	; line numbers in editor

(dolist (mode '(org-mode-hook		; disable for some modes
		term-mode-hook
		shell-mode-hook
		treemacs-mode-hook
		eshell-mode-hook))
  (add-hook mode (lambda ()
		   (display-line-numbers-mode 0))))

	    

(provide 'init-custom-windows-user-interface)
;;; init-custom-windows-user.el ends here
