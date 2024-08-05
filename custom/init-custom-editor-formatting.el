;;; init-custom-editor-formatting.el -*- lexical-binding: t; -*-

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
;; GROUP: Editor -> Indentation
(setq-default indent-tabs-mode nil)	; space indentation
(setq-default tab-width 4)
(setq sentence-end-double-space nil)
(delete-selection-mode)
(global-set-key (kbd "RET") 'newline-and-indent)

(add-hook 'sh-mode-hook (lambda ()
			  (setq tab-width 4)))
(add-hook 'prog-mode-hook		; show unnecessary whitespace
	  (lambda() (interacive)
	    (setq show-trailing-whitespace 1)))

(global-set-key (kbd "C-c w")		; mode for whitespace
		'whitespace-mode)

;; PACKAGE: EMACS
;; GROUP: Editor -> Word-wrap
(global-visual-line-mode 1)		; global word-wrap mode

(setq-default truncate-lines t)		; truncates at edge

(add-hook 'prog-mode-hook
	  (lambda()
	    (setq truncate-lines t)
	    (outline-minor-mode t)))


(provide 'init-custom-editor-formatting)
;;; init-custom-editor-formatting.el ends here
