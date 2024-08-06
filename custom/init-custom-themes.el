;;; init-custom-themes.el -*- lexical-binding: t; -*-

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

;; PACKAGE: zenburn-theme
;; GROUP: Themes
;; DESC: 'zenburn' is a low-contrast color theme that is
;;       exceptionally easy on the eyes.
(use-package zenburn-theme)

;; PACKAGE: solarized-theme
;; GROUP: Themes
;; DESC: 'solarized-theme' is an Emacs 24-bit theme making
;;       use of a solarized palette, developed by Ethan
;;       Schoonover. Available themes that can be enabled
;;       by 'load-theme' are 'solarized-light' and
;;       'solarized-dark'.
(use-package solarized-theme)

;; PACKAGE: doom-themes
;; GROUP: Themes
;; DESC: A series of 'doom-zenburn', 'doom-monokai-pro',
;;       'doom-tommorow-night', 'doom-one' themes based
;;       on doom-emacs style.
(use-package doom-themes)




(provide 'init-custom-themes)
;;; init-custom-themes.el ends here
