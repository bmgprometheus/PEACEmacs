;;; init-custom-dev-basic.el -*- lexical-binding: t; -*-

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
;; GROUP: Programming -> Elisp Emulation
(require 'cl-lib)			; Emacs emulation for common lisp

;; PACKAGE: EMACS
;; GROUP: Programming -> Source Code -> Compilation
(global-set-key (kbd "<f5>")		; F5 key bound for compilation
		(lambda ()
		  (interactive)
		  (setq-local compilation-read-command nil)
		  (call-interactively 'compile)))

;; PACKAGE: EMACS
;; GROUP: Programming -> Source Code -> Debugging


(provide 'init-custom-dev-basic)
;;; init-custom-dev-basic.el ends here
