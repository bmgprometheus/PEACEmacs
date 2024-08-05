;;; init-custom-languages.el -*- lexical-binding: t; -*-

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
;; GROUP: Editor -> Language and Locale
(set-language-environment 'utf-8)	; unicode support UTF-8
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(setq locale-coding-system 'utif-8)
(setq buffer-file-coding-system 'utf-8)
(prefer-coding-system 'utf-8)



(provide 'init-custom-languages)
;;; init-custom-languages.el ends here
