;;; init-custom-windows-frame.el -*- lexical-binding: t; -*-

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

;; PACKAGE:EMACS
;; GROUP: User Interface -> Windowing
(setq frame-resize-pixelwise t		; resize at pixel res
      x-frame-normalize-before-maximize t)

(add-to-list 'initial-frame-alist	; maximize frame
	     ;;'(fullscreen . fullscreen))
	     '(fullscreen . fullheight))

(desktop-save-mode 1)			; save state on exit

(provide 'init-custom-windows-frame)
;;; init-custom-windows-frame.el ends here
