;;; init-custom-editor-modes.el -*- lexical-binding: t; -*-

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
;; GROUP: Editor -> Major and Minor Modes
(setq outline-minor-mode-prefix "\C-c\C-o") ; change from C-c @

(add-hook 'outline-minor-mode-hook
	  (lambda () (local-set-key "\C-c\C-o"
				    outline-mode-prefix-map)))
(fset 'yes-or-no-p 'y-or-n-p)

;; PACKAGE:EMACS
;; GROUP: Editor -> Major and Minor Modes -> diff-mode
(add-hook 'diff-mode-hook		; show whitespace
	  (lambda ()
	    (setq-local whitespace-style
			'(face
			  tabs
			  tab-mark
			  spaces
			  space-mark
			  trailing
			  indentation::space
			  indentation::tab
			  newline
			  newline-mark))
	    (whitespace-mode 1)))



(provide 'init-custom-editor-modes)
;;; init-custom-editor-modes.el ends here
