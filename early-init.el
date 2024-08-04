;;; early-init.el -*- lexical-binding: t; -*-

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
;; GROUP: Startup -> Version Check

(when (< emacs-major-version 27)	; Enforce use of Emacs 27+
  (error
   "You need version 27 or higher of Emacs to enable this init.el configuration."))

;; PACKAGE: EMACS GROUP: Startup -> Package Manager -> Disable
;; Package.el Using straight package manager, therefore we are
;; removing any code that relates to 'package.el' from all our
;; configuration. Prevent package.el from auto-loading packages prior
;; to theirinit-file loading

(setq package-enable-at-startup nil)


(provide 'early-init)
;;; early-init.el ends here
