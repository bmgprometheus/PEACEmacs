;;; init-custom-editor-views-read.el -*- lexical-binding: t; -*-

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
;; GROUP: Editor -> Read Views
(setq view-read-only t)

(with-eval-after-load "view-mode"
  (define-key view-mode-map (kbd "s") 'isearch-forward-regexp))

(add-hook 'read-only-mode-hook		; buffer cursors
	  (lambda ()
	    (cond
	     ((and (not buffer-read-only)
		   (not (eq (get major-mode 'mode-class) 'special)))
	      (hl-line-mode -1)
	      (setq-local blink-cursor-blinks 0)
	      (setq-local cursor-type '(bar . 3))
	      (company-mode t))
	     ((and buffer-read-only
		   (not (eq (get major-mode 'mode-class) 'special)))
	      (hl-line-mode t)
	      (setq-local blink-cursor-blinks 1)
	      (setq-local cursor-type 'hollow)
	      (company-mode -1)))))

(provide 'init-custom-editor-views-read)
;;; init-custom-editor-views-read.el ends here
