;;; init.el --- Emacs Configuration -*- lexical-binding: t; -*-

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

;; PACKAGE: straight.el
;; SOURCE: https://github.com/radian-software/straight.el
;; GROUP: Frameworks -> Package Manager -> `straight.el'

;; The P.E.A.C.E (Packages, Extensions, Applications and
;; Customizations for Emacs) package manager is 'straight.el' and it
;; operates by cloning Git repositories rather than downloading
;; packages from a predifined list of package-archives. 'straight.el'
;; allows us to install a package fron any branch of any Git
;; repository, and allows us to make customized changes to any
;; installed package locally, and version control the customized
;; package.

;; Bootstrap 'straight.el' by loading the recommended bootstrap configuration.
;; Git has to be installed in order to use 'straight.el'

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
	"straight/repos/straight.el/bootstrap.el"
	(or (bound-and-true-p straight-base-dir)
	    user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; PACKAGE:  PEACEmacs Customizations
;; GROUP: Customization -> Libraries -> Paths
;;
;; At start-up, set the value of 'load-path' so that Emacs can find
;; application customizations and extensions from local installation
;; directories. Even though the default directory for emacs is
;; .emacs.d/ in the user's home folder, we err on the side of caution
;; and simply concatenate the folders used by PEACE to the value
;; supplied by 'user-emacs-directory'. In constructing the path to be
;; passed to 'load-path' we use the Emacs funciton
;; 'convert-standard-file-name' to ensure that the path is valid on
;; all supported operating system platforms. Note that'load-path' does
;; not add any subdirectories, or their descendant subdirectories.
;;
;; The convention in PEACE is to use the following structure: (a) a
;; "custom" directory for default Emacs customizations; (b) a
;; "site-lisp" directory for PEACE specific Lisp libraries; and (c) a
;; "lisp" directory for key third-party applications and extensions to
;; Emacs.
;;
;; DEBUG: After 'M-x eval-buffer RET' run 'C-h v load-path RET' to see
;;        the current list of directories being loaded. If the
;;        directory is not listed, check for conflicting libraries via
;;        the command 'M-x locate-library',

(add-to-list 'load-path (concat user-emacs-directory
				(convert-standard-filename "custom")))
(add-to-list 'load-path (concat user-emacs-directory
				(convert-standard-filename "site-lisp")))
(add-to-list 'load-path (concat user-emacs-directory
				(convert-standard-filename "lisp")))

;; PEACE PACKAGES

;; First install use-package
(straight-use-package 'use-package)

;; Configure 'use-package' to always use 'straight.el' as its package
;; manager.  Calling 'use-package' would normally install
;; 'straight.el', but since it's already loaded, the installation is
;; skipped and the configuration is set.

(use-package straight
  :custom (straight-use-package-by-default t))

;; set-up basic resource utilization configurations
(require 'init-custom-resources)

;; set-up windowing framework
(require 'init-custom-windows-frame)
(require 'init-custom-windows-views)
(require 'init-custom-windows-navigation)
(require 'init-custom-windows-user-interface)


(provide 'init)
::: init.el ends here
