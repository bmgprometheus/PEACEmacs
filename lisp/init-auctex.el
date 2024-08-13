;;; init-auctex.el -*- lexical-binding: t; -*-

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

;;              AucTex is a comprehensive customizable integrated
;;              environment for writing input files for TeX, LaTex,
;;              ConTeXt, Texinfo, and docTeX using Emacs. AucTeX
;;              processes source files by running TeX and related
;;              tools (such as output filters, post processors for
;;              generating indices and bibiliographies, and viewers)
;;              from inside Emacs.

;;; Code:
(use-package auctex
  :straight (:type git :host nil :repo "https://git.savannah.gnu.org/git/auctex.git"
                   :pre-build (
                               ("./autogen.sh")
                               ("./configure" "--without-textmf-dir" "with-lispdir=.")
                               ("make")
                               ;; or (shell-command "./autogen.sh &&
                               ;; ./configure --without-texmf-dir
                               ;; --with-lispdir=. && make")
                               )
                   )
  :mode
  ;; https://www.mail-archive.com/auctex@gnu.org/msg07608.html
  ;; https://www.gnu.org/software/emacs/manual/html_node/reftex/Installation.html
  ("\\.tex\\'" . latex-mode)            ; Activate inferior Emacs latex mode
  :hook
        (LaTeX-mode . TeX-PDF-mode)
        (LaTeX-mode . company-mode)
        (LaTeX-mode . flyspell-mode)
        (LaTeX-mode . flycheck-mode)
        (LaTeX-mode . LaTeX-math-mode)
        (LaTeX-mode . turn-on-reftex)
        (LaTeX-mode . turn-on-cdlatex)
  :init
  (load "auctex.el" nil t t)
  (load "preview-latex.el" nil t t)
  (require 'reftex)

  (setq-default TeX-master 'dwim)

  (setq TeX-data-directory (straight--repos-dir "auctex")
        TeX-lisp-direcoory TeX-data-directory

  ;; ; Or custom-set-variables as follows.
  ;; ; M-x describe-variable RET preview-TeX-style-dir RET
  ;; '(preview-TeX-style-dir ,(concat ".:" (straight--repos-dir "auctex") "latex:"))
  ;; preview-TeX-style-dir (concat ".:" (straight--repos-dir "auctex") "latex:")
  ;;
  ;; TeX-parse-self t ; parse on load
  ;; TeX-auto-save t ; parse on save
  ;; TeX-auto-untabify t ; automatically remove tabs before saving
  ;;
  ;; ; Type of TeX engine to use
  ;; ;* 'default'
  ;; ;* 'luatex'
  ;; ;* 'omega'
  ;; ;* 'xetex'
  ;; TeX-source-correlate-mode t
  ;; TeX-source-correlate-method 'synctex
  ;; TeX-source-correlate-start-server t
  ;;
  ;; ; automatically insert braces after sub/superscript in math mode
  ;; TeX-electric-sub-and-superscript t
  ;; ; if non-nil, then query the user before saving each file with TeX-save-document
  ;; TeX-save-query nil
  ;; TeX-command-list '("XeLaTeX" "%'xelatex --synctex=1%(mode)%' %t"
  ;;                     TeX-run-TeX nil t))
  ;; TeX-view-program-list '(("eaf" 'eaf-pdf-synctex-forward-view))
  ;; TeX-view-program-selection '((output-pdf "eaf"))
  ;; ))
  ))

(eval-after-load "auctex"
  '(add-to-list 'TeX-command-list
                '("XeLaTeX" "xelatex -interaction=nonstopmode %s"
                  TeX-run-command t t :help "Run xelatex") t ))

;; (add-to-list 'Tex-command-list '("XeLaTeX" "%'xelatex --synctex=1%(mode)%' %t" TeX-run-TeX nil t))
;;
;; (eval-after-load "auctex"
;;  '(add-to-list 'TeX-view-program-list '("eaf" eaf-pdf-synctex-forward-view) t))

;; (eval-after-load "auctex"
;;  '(add-to-list 'TeX-view-program-selection '(output-pdf "eaf") t))

(provide 'init-auctex)
;;; init-auctex.el ends here


