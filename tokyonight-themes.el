;;; tokyonight-themes.el --- Elegant themes inspired by Tokyo Night -*- lexical-binding: t -*-

;; Copyright (C) 2025

;; Author: Tokyo Night Themes Contributors
;; Maintainer: Tokyo Night Themes Contributors  
;; URL: https://github.com/xvvhang/tokyonight.el
;; Version: 2.0.0
;; Package-Requires: ((emacs "24.3"))
;; Created: June 9, 2025
;; Keywords: themes faces

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

;; Tokyo Night is a theme inspired by the night in the city of Tokyo.
;; This is a port of the famous tokyonight.nvim theme for Neovim.
;; Original theme created by folke, see: https://github.com/folke/tokyonight.nvim
;;
;; This theme provides 4 variants:
;; - tokyonight-night: The classic dark theme
;; - tokyonight-storm: A darker variant with different blue tones  
;; - tokyonight-moon: A softer dark variant with muted colors
;; - tokyonight-day: A light variant for daytime use

;;; Code:

(defgroup tokyonight-themes nil
  "Tokyo Night themes options."
  :group 'faces)

(defcustom tokyonight-themes-comment-italic t
  "Enable italics for comments and also disable background."
  :type 'boolean
  :group 'tokyonight-themes)

(defcustom tokyonight-themes-keyword-italic t
  "Enable italics for keywords."
  :type 'boolean
  :group 'tokyonight-themes)

(defcustom tokyonight-themes-org-agenda-height t
  "Use varying text heights for org agenda."
  :type 'boolean
  :group 'tokyonight-themes)

(defcustom tokyonight-themes-org-height t
  "Use varying text heights for org headings."
  :type 'boolean
  :group 'tokyonight-themes)

(defcustom tokyonight-themes-org-bold t
  "Inherit text bold for org headings."
  :type 'boolean
  :group 'tokyonight-themes)

(defcustom tokyonight-themes-org-priority-bold t
  "Inherit text bold for priority items in agenda view."
  :type 'boolean
  :group 'tokyonight-themes)

(defcustom tokyonight-themes-org-highlight nil
  "Highlight org headings."
  :type 'boolean
  :group 'tokyonight-themes)

;;;###autoload
(defcustom tokyonight-themes-custom-colors '()
  "Place to override default theme colors."
  :type 'list
  :group 'tokyonight-themes)

(eval-when-compile
  (defvar tokyonight-themes-color-palette-list
    '(;; Base colors that will be defined per variant
      (bg nil)
      (bg-dark nil)
      (bg-dark1 nil)
      (bg-float nil)
      (bg-highlight nil)
      (bg-popup nil)
      (bg-search nil)
      (bg-sidebar nil)
      (bg-statusline nil)
      (bg-visual nil)
      (black nil)
      (blue nil)
      (blue0 nil)
      (blue1 nil)
      (blue2 nil)
      (blue5 nil)
      (blue6 nil)
      (blue7 nil)
      (border nil)
      (border-highlight nil)
      (comment nil)
      (cyan nil)
      (dark3 nil)
      (dark5 nil)
      (error nil)
      (fg nil)
      (fg-dark nil)
      (fg-float nil)
      (fg-gutter nil)
      (fg-sidebar nil)
      (green nil)
      (green1 nil)
      (green2 nil)
      (hint nil)
      (info nil)
      (magenta nil)
      (magenta2 nil)
      (none "NONE")
      (orange nil)
      (purple nil)
      (red nil)
      (red1 nil)
      (teal nil)
      (warning nil)
      (yellow nil)
      
      ;; Terminal colors
      (terminal-black nil)
      (terminal-black-bright nil)
      (terminal-red nil)
      (terminal-red-bright nil)
      (terminal-green nil)
      (terminal-green-bright nil)
      (terminal-yellow nil)
      (terminal-yellow-bright nil)
      (terminal-blue nil)
      (terminal-blue-bright nil)
      (terminal-magenta nil)
      (terminal-magenta-bright nil)
      (terminal-cyan nil)
      (terminal-cyan-bright nil)
      (terminal-white nil)
      (terminal-white-bright nil)
      
      ;; Git colors
      (git-add nil)
      (git-change nil)
      (git-delete nil)
      (git-ignore nil)
      
      ;; Diff colors
      (diff-add nil)
      (diff-change nil)
      (diff-delete nil)
      (diff-text nil))
    "The tokyo night color palette list."))

(eval-and-compile
  (defun tokyonight-themes--variant-colors-symbol (variant)
    "Create symbol for color palette of tokyonight-themes VARIANT."
    (intern (format "tokyonight-themes-%s-colors" (symbol-name variant)))))

(defmacro tokyonight-themes--define-variant-colors (variant &rest body)
  "Define color palette for a specific theme VARIANT via BODY."
  (declare (indent defun))
  `(defvar ,(tokyonight-themes--variant-colors-symbol variant)
     (let ,tokyonight-themes-color-palette-list ,@body)))

;; Night variant color palette
(tokyonight-themes--define-variant-colors night
  '(;; Tokyo Night Color Palette - Night Variant
   ;; Based on tokyonight.nvim Night variant
   (bg "#1a1b26")
   (bg-dark "#16161e")
   (bg-dark1 "#0c0e14")
   (bg-float "#16161e")
   (bg-highlight "#292e42")
   (bg-popup "#16161e")
   (bg-search "#3d59a1")
   (bg-sidebar "#16161e")
   (bg-statusline "#16161e")
   (bg-visual "#283457")
   (black "#15161e")
   (blue "#7aa2f7")
   (blue0 "#3d59a1")
   (blue1 "#2ac3de")
   (blue2 "#0db9d7")
   (blue5 "#89ddff")
   (blue6 "#b4f9f8")
   (blue7 "#394b70")
   (border "#15161e")
   (border-highlight "#27a1b9")
   (comment "#565f89")
   (cyan "#7dcfff")
   (dark3 "#545c7e")
   (dark5 "#737aa2")
   (error "#db4b4b")
   (fg "#c0caf5")
   (fg-dark "#a9b1d6")
   (fg-float "#c0caf5")
   (fg-gutter "#3b4261")
   (fg-sidebar "#a9b1d6")
   (green "#9ece6a")
   (green1 "#73daca")
   (green2 "#41a6b5")
   (hint "#1abc9c")
   (info "#0db9d7")
   (magenta "#bb9af7")
   (magenta2 "#ff007c")
   (none "NONE")
   (orange "#ff9e64")
   (purple "#9d7cd8")
   (red "#f7768e")
   (red1 "#db4b4b")
   (teal "#1abc9c")
   (warning "#e0af68")
   (yellow "#e0af68")
   
   ;; Terminal colors (Night variant)
   (terminal-black "#15161e")
   (terminal-black-bright "#414868")
   (terminal-red "#f7768e")
   (terminal-red-bright "#ff899d")
   (terminal-green "#9ece6a")
   (terminal-green-bright "#9fe044")
   (terminal-yellow "#e0af68")
   (terminal-yellow-bright "#faba4a")
   (terminal-blue "#7aa2f7")
   (terminal-blue-bright "#8db0ff")
   (terminal-magenta "#bb9af7")
   (terminal-magenta-bright "#c7a9ff")
   (terminal-cyan "#7dcfff")
   (terminal-cyan-bright "#a4daff")
   (terminal-white "#a9b1d6")
   (terminal-white-bright "#c0caf5")
   
   ;; Git colors (Night variant)
   (git-add "#449dab")
   (git-change "#6183bb")
   (git-delete "#914c54")
   (git-ignore "#545c7e")
   
   ;; Diff colors (Night variant)
   (diff-add "#20303b")
   (diff-change "#1f2231")
   (diff-delete "#37222c")
   (diff-text "#394b70")))

;; Storm variant color palette (Commit 5)
(tokyonight-themes--define-variant-colors storm
  '(;; Tokyo Night Color Palette - Storm Variant
   ;; Based on tokyonight.nvim Storm variant
   (bg "#24283b")
   (bg-dark "#1f2335")
   (bg-dark1 "#1b1e2d")
   (bg-float "#1f2335")
   (bg-highlight "#292e42")
   (bg-popup "#1f2335")
   (bg-search "#3d59a1")
   (bg-sidebar "#1f2335")
   (bg-statusline "#1f2335")
   (bg-visual "#2e3c64")
   (black "#1d202f")
   (blue "#7aa2f7")
   (blue0 "#3d59a1")
   (blue1 "#2ac3de")
   (blue2 "#0db9d7")
   (blue5 "#89ddff")
   (blue6 "#b4f9f8")
   (blue7 "#394b70")
   (border "#1d202f")
   (border-highlight "#29a4bd")
   (comment "#565f89")
   (cyan "#7dcfff")
   (dark3 "#545c7e")
   (dark5 "#737aa2")
   (error "#db4b4b")
   (fg "#c0caf5")
   (fg-dark "#a9b1d6")
   (fg-float "#c0caf5")
   (fg-gutter "#3b4261")
   (fg-sidebar "#a9b1d6")
   (green "#9ece6a")
   (green1 "#73daca")
   (green2 "#41a6b5")
   (hint "#1abc9c")
   (info "#0db9d7")
   (magenta "#bb9af7")
   (magenta2 "#ff007c")
   (none "NONE")
   (orange "#ff9e64")
   (purple "#9d7cd8")
   (red "#f7768e")
   (red1 "#db4b4b")
   (teal "#1abc9c")
   (warning "#e0af68")
   (yellow "#e0af68")
   
   ;; Terminal colors (Storm variant)
   (terminal-black "#1d202f")
   (terminal-black-bright "#414868")
   (terminal-red "#f7768e")
   (terminal-red-bright "#ff899d")
   (terminal-green "#9ece6a")
   (terminal-green-bright "#9fe044")
   (terminal-yellow "#e0af68")
   (terminal-yellow-bright "#faba4a")
   (terminal-blue "#7aa2f7")
   (terminal-blue-bright "#8db0ff")
   (terminal-magenta "#bb9af7")
   (terminal-magenta-bright "#c7a9ff")
   (terminal-cyan "#7dcfff")
   (terminal-cyan-bright "#a4daff")
   (terminal-white "#a9b1d6")
   (terminal-white-bright "#c0caf5")
   
   ;; Git colors (Storm variant)
   (git-add "#449dab")
   (git-change "#6183bb")
   (git-delete "#914c54")
   (git-ignore "#545c7e")
   
   ;; Diff colors (Storm variant)
   (diff-add "#283b4d")
   (diff-change "#272d43")
   (diff-delete "#3f2d3d")
   (diff-text "#394b70")))

;; Moon variant (Commit 6)  
(tokyonight-themes--define-variant-colors moon
  '(;; Tokyo Night Color Palette - Moon Variant
   ;; Based on tokyonight.nvim Moon variant
   (bg "#222436")
   (bg-dark "#1e2030")
   (bg-dark1 "#191b29")
   (bg-float "#1e2030")
   (bg-highlight "#2f334d")
   (bg-popup "#1e2030")
   (bg-search "#3e68d7")
   (bg-sidebar "#1e2030")
   (bg-statusline "#1e2030")
   (bg-visual "#2d3f76")
   (black "#1b1d2b")
   (blue "#82aaff")
   (blue0 "#3e68d7")
   (blue1 "#65bcff")
   (blue2 "#0db9d7")
   (blue5 "#89ddff")
   (blue6 "#b4f9f8")
   (blue7 "#394b70")
   (border "#1b1d2b")
   (border-highlight "#4fd6be")
   (comment "#636da6")
   (cyan "#86e1fc")
   (dark3 "#545c7e")
   (dark5 "#737aa2")
   (error "#c53b53")
   (fg "#c8d3f5")
   (fg-dark "#828bb8")
   (fg-float "#c8d3f5")
   (fg-gutter "#3b4261")
   (fg-sidebar "#828bb8")
   (green "#c3e88d")
   (green1 "#4fd6be")
   (green2 "#41a6b5")
   (hint "#4fd6be")
   (info "#0db9d7")
   (magenta "#c099ff")
   (magenta2 "#ff007c")
   (none "NONE")
   (orange "#ff966c")
   (purple "#fca7ea")
   (red "#ff757f")
   (red1 "#c53b53")
   (teal "#4fd6be")
   (warning "#ffc777")
   (yellow "#ffc777")
   
   ;; Terminal colors (Moon variant)
   (terminal-black "#444a73")
   (terminal-black-bright "#545c7e")
   (terminal-red "#ff757f")
   (terminal-red-bright "#ff8a95")
   (terminal-green "#c3e88d")
   (terminal-green-bright "#dfffa5")
   (terminal-yellow "#ffc777")
   (terminal-yellow-bright "#ffea83")
   (terminal-blue "#82aaff")
   (terminal-blue-bright "#99c1ff")
   (terminal-magenta "#c099ff")
   (terminal-magenta-bright "#d1aaff")
   (terminal-cyan "#86e1fc")
   (terminal-cyan-bright "#a6efff")
   (terminal-white "#828bb8")
   (terminal-white-bright "#c8d3f5")
   
   ;; Git colors (Moon variant)
   (git-add "#b8db87")
   (git-change "#7ca1f2")
   (git-delete "#e26a75")
   (git-ignore "#545c7e")
   
   ;; Diff colors (Moon variant)
   (diff-add "#273849")
   (diff-change "#252a3f")
   (diff-delete "#3a273a")
   (diff-text "#394b70")))

;; Day variant (Commit 7)
(tokyonight-themes--define-variant-colors day
  '(;; Tokyo Night Color Palette - Day Variant (Light Theme)
   ;; Based on tokyonight.nvim Day variant
   (bg "#e1e2e7")
   (bg-dark "#d0d5e3")
   (bg-dark1 "#c1c9df")
   (bg-float "#d0d5e3")
   (bg-highlight "#c4c8da")
   (bg-popup "#d0d5e3")
   (bg-search "#7890dd")
   (bg-sidebar "#d0d5e3")
   (bg-statusline "#d0d5e3")
   (bg-visual "#b7c1e3")
   (black "#b4b5b9")
   (blue "#2e7de9")
   (blue0 "#7890dd")
   (blue1 "#188092")
   (blue2 "#07879d")
   (blue5 "#006a83")
   (blue6 "#2e5857")
   (blue7 "#92a6d5")
   (border "#b4b5b9")
   (border-highlight "#4094a3")
   (comment "#848cb5")
   (cyan "#007197")
   (dark3 "#8990b3")
   (dark5 "#68709a")
   (error "#c64343")
   (fg "#3760bf")
   (fg-dark "#6172b0")
   (fg-float "#3760bf")
   (fg-gutter "#a8aecb")
   (fg-sidebar "#6172b0")
   (green "#587539")
   (green1 "#387068")
   (green2 "#38919f")
   (hint "#118c74")
   (info "#07879d")
   (magenta "#9854f1")
   (magenta2 "#d20065")
   (none "NONE")
   (orange "#b15c00")
   (purple "#7847bd")
   (red "#f52a65")
   (red1 "#c64343")
   (teal "#118c74")
   (warning "#8c6c3e")
   (yellow "#8c6c3e")
   
   ;; Terminal colors (Day variant)
   (terminal-black "#a1a6c5")
   (terminal-black-bright "#8990b3")
   (terminal-red "#f52a65")
   (terminal-red-bright "#ff4774")
   (terminal-green "#587539")
   (terminal-green-bright "#5c8524")
   (terminal-yellow "#8c6c3e")
   (terminal-yellow-bright "#a27629")
   (terminal-blue "#2e7de9")
   (terminal-blue-bright "#358aff")
   (terminal-magenta "#9854f1")
   (terminal-magenta-bright "#a463ff")
   (terminal-cyan "#007197")
   (terminal-cyan-bright "#007ea8")
   (terminal-white "#6172b0")
   (terminal-white-bright "#3760bf")
   
   ;; Git colors (Day variant)
   (git-add "#4197a4")
   (git-change "#506d9c")
   (git-delete "#c47981")
   (git-ignore "#8990b3")
   
   ;; Diff colors (Day variant)
   (diff-add "#c8d6dc")
   (diff-change "#d5d9e4")
   (diff-delete "#ddcace")
   (diff-text "#92a6d5")))

;; These will be populated in subsequent commits

(defmacro tokyonight-themes--face-specs ()
  "Return a backquote which defines a list of face specs.

It expects to be evaluated in a scope in which the various color
names to which it refers are bound."
  ;; Face specifications will be implemented in Commit 3
  `(mapcar
    #'(lambda (f) (list (car f) `((t ,@(cdr f)))))
    `(
      ;; Built-in Emacs faces
      (default (:foreground ,fg :background ,bg))
      (cursor (:background ,fg))
      (region (:background ,bg-visual))
      (highlight (:background ,bg-highlight))
      (secondary-selection (:background ,bg-visual))
      (trailing-whitespace (:background ,red))
      (escape-glyph (:foreground ,orange))
      (homoglyph (:foreground ,yellow))
      (nobreak-space (:foreground ,orange :underline t))
      (nobreak-hyphen (:foreground ,orange))
      (shadow (:foreground ,comment))
      (success (:foreground ,green))
      (error (:foreground ,error))
      (warning (:foreground ,warning))
      
      ;; Font lock faces (syntax highlighting)
      (font-lock-builtin-face (:foreground ,blue))
      (font-lock-comment-face (:foreground ,comment
                               ,@(if tokyonight-themes-comment-italic
                                     '(:italic t) '())))
      (font-lock-comment-delimiter-face (:foreground ,comment))
      (font-lock-constant-face (:foreground ,orange))
      (font-lock-doc-face (:foreground ,comment))
      (font-lock-function-name-face (:foreground ,blue))
      (font-lock-keyword-face (:foreground ,purple
                               ,@(if tokyonight-themes-keyword-italic
                                     '(:italic t) '())))
      (font-lock-negation-char-face (:foreground ,red))
      (font-lock-number-face (:foreground ,orange))
      (font-lock-operator-face (:foreground ,purple))
      (font-lock-preprocessor-face (:foreground ,purple))
      (font-lock-regexp-grouping-backslash (:foreground ,orange))
      (font-lock-regexp-grouping-construct (:foreground ,purple))
      (font-lock-string-face (:foreground ,green))
      (font-lock-type-face (:foreground ,cyan))
      (font-lock-variable-name-face (:foreground ,fg))
      (font-lock-warning-face (:foreground ,warning))
      
      ;; Line numbers
      (line-number (:foreground ,fg-gutter :background ,bg))
      (line-number-current-line (:foreground ,orange :background ,bg-highlight))
      
      ;; Fringe
      (fringe (:background ,bg))
      (left-fringe (:background ,bg))
      (right-fringe (:background ,bg))
      
      ;; Modeline
      (mode-line (:foreground ,fg :background ,bg-statusline 
                  :box (:line-width -1 :color ,border)))
      (mode-line-inactive (:foreground ,comment :background ,bg-statusline
                           :box (:line-width -1 :color ,border)))
      (mode-line-buffer-id (:foreground ,blue :weight bold))
      (mode-line-highlight (:foreground ,orange))
      
      ;; Minibuffer
      (minibuffer-prompt (:foreground ,blue))
      
      ;; Isearch
      (isearch (:foreground ,bg :background ,orange))
      (lazy-highlight (:background ,bg-search))
      (isearch-fail (:background ,error))
      
      ;; Links
      (link (:foreground ,blue :underline t))
      (link-visited (:foreground ,purple :underline t))
      
      ;; Whitespace
      (whitespace-space (:foreground ,fg-gutter))
      (whitespace-tab (:foreground ,fg-gutter))
      (whitespace-newline (:foreground ,fg-gutter))
      (whitespace-trailing (:background ,red))
      (whitespace-line (:background ,bg-highlight))
      (whitespace-space-before-tab (:background ,yellow))
      (whitespace-indentation (:background ,yellow))
      (whitespace-empty (:background ,yellow))
      (whitespace-space-after-tab (:background ,yellow))
      
      ;; Show paren
      (show-paren-match (:foreground ,orange :background ,bg-highlight :weight bold))
      (show-paren-mismatch (:foreground ,red :background ,bg-highlight :weight bold))
      
      ;; Compilation
      (compilation-info (:foreground ,green))
      (compilation-warning (:foreground ,warning))
      (compilation-error (:foreground ,error))
      (compilation-line-number (:foreground ,blue))
      (compilation-column-number (:foreground ,blue))
      
      ;; Completions
      (completions-common-part (:foreground ,blue))
      (completions-first-difference (:foreground ,orange))
      
      ;; Help
      (help-key-binding (:foreground ,blue :background ,bg-highlight
                         :box (:line-width -1 :color ,border)))
      
      ;; Match
      (match (:background ,bg-search))
      
      ;; Diff faces
      (diff-added (:background ,diff-add))
      (diff-removed (:background ,diff-delete))
      (diff-changed (:background ,diff-change))
      (diff-context (:foreground ,fg-dark))
      (diff-file-header (:foreground ,blue :weight bold))
      (diff-hunk-header (:foreground ,purple :background ,bg-highlight))
      (diff-index (:foreground ,blue))
      (diff-nonexistent (:foreground ,comment))
      (diff-refine-added (:background ,git-add :foreground ,green))
      (diff-refine-removed (:background ,git-delete :foreground ,red))
      (diff-refine-changed (:background ,git-change :foreground ,blue))
      
      ;; Vc (version control)
      (vc-state-base (:foreground ,comment))
      (vc-up-to-date-state (:foreground ,green))
      (vc-needs-update-state (:foreground ,warning))
      (vc-missing-state (:foreground ,red))
      (vc-conflict-state (:foreground ,red :weight bold))
      (vc-locally-added-state (:foreground ,blue))
      (vc-locked-state (:foreground ,cyan))
      (vc-removed-state (:foreground ,red))
      (vc-edited-state (:foreground ,yellow))
      
      ;; Dired
      (dired-directory (:foreground ,blue))
      (dired-ignored (:foreground ,comment))
      (dired-flagged (:foreground ,red))
      (dired-header (:foreground ,purple :weight bold))
      (dired-mark (:foreground ,orange))
      (dired-marked (:foreground ,orange :weight bold))
      (dired-perm-write (:foreground ,red))
      (dired-symlink (:foreground ,cyan))
      (dired-warning (:foreground ,warning))
      
      ;; Eshell
      (eshell-prompt (:foreground ,purple :weight bold))
      (eshell-ls-archive (:foreground ,orange))
      (eshell-ls-backup (:foreground ,comment))
      (eshell-ls-clutter (:foreground ,red))
      (eshell-ls-directory (:foreground ,blue))
      (eshell-ls-executable (:foreground ,green))
      (eshell-ls-missing (:foreground ,red))
      (eshell-ls-product (:foreground ,orange))
      (eshell-ls-readonly (:foreground ,comment))
      (eshell-ls-special (:foreground ,magenta))
      (eshell-ls-symlink (:foreground ,cyan))
      (eshell-ls-unreadable (:foreground ,red))
      
      ;; Shell
      (shell-option-face (:foreground ,orange))
      (shell-output-2-face (:foreground ,red))
      (shell-output-3-face (:foreground ,yellow))
      (shell-output-face (:foreground ,fg))
      (shell-prompt-face (:foreground ,purple :weight bold))
      
      ;; Term
      (term-bold (:weight bold))
      (term-color-black (:foreground ,terminal-black :background ,terminal-black))
      (term-color-red (:foreground ,terminal-red :background ,terminal-red))
      (term-color-green (:foreground ,terminal-green :background ,terminal-green))
      (term-color-yellow (:foreground ,terminal-yellow :background ,terminal-yellow))
      (term-color-blue (:foreground ,terminal-blue :background ,terminal-blue))
      (term-color-magenta (:foreground ,terminal-magenta :background ,terminal-magenta))
      (term-color-cyan (:foreground ,terminal-cyan :background ,terminal-cyan))
      (term-color-white (:foreground ,terminal-white :background ,terminal-white))
      
      ;; Ansi colors
      (ansi-color-black (:foreground ,terminal-black :background ,terminal-black))
      (ansi-color-red (:foreground ,terminal-red :background ,terminal-red))
      (ansi-color-green (:foreground ,terminal-green :background ,terminal-green))
      (ansi-color-yellow (:foreground ,terminal-yellow :background ,terminal-yellow))
      (ansi-color-blue (:foreground ,terminal-blue :background ,terminal-blue))
      (ansi-color-magenta (:foreground ,terminal-magenta :background ,terminal-magenta))
      (ansi-color-cyan (:foreground ,terminal-cyan :background ,terminal-cyan))
      (ansi-color-white (:foreground ,terminal-white :background ,terminal-white))
      (ansi-color-bright-black (:foreground ,terminal-black-bright :background ,terminal-black-bright))
      (ansi-color-bright-red (:foreground ,terminal-red-bright :background ,terminal-red-bright))
      (ansi-color-bright-green (:foreground ,terminal-green-bright :background ,terminal-green-bright))
      (ansi-color-bright-yellow (:foreground ,terminal-yellow-bright :background ,terminal-yellow-bright))
      (ansi-color-bright-blue (:foreground ,terminal-blue-bright :background ,terminal-blue-bright))
      (ansi-color-bright-magenta (:foreground ,terminal-magenta-bright :background ,terminal-magenta-bright))
      (ansi-color-bright-cyan (:foreground ,terminal-cyan-bright :background ,terminal-cyan-bright))
      (ansi-color-bright-white (:foreground ,terminal-white-bright :background ,terminal-white-bright))
      
      ;; Org mode faces
      (org-level-1 (:foreground ,blue :weight bold 
                    ,@(if tokyonight-themes-org-height 
                          '(:height 1.3) '())))
      (org-level-2 (:foreground ,purple :weight bold
                    ,@(if tokyonight-themes-org-height 
                          '(:height 1.2) '())))
      (org-level-3 (:foreground ,orange :weight bold
                    ,@(if tokyonight-themes-org-height 
                          '(:height 1.1) '())))
      (org-level-4 (:foreground ,green))
      (org-level-5 (:foreground ,cyan))
      (org-level-6 (:foreground ,yellow))
      (org-level-7 (:foreground ,red))
      (org-level-8 (:foreground ,magenta))
      (org-document-title (:foreground ,blue :weight bold
                           ,@(if tokyonight-themes-org-height 
                                 '(:height 1.5) '())))
      (org-document-info (:foreground ,cyan))
      (org-document-info-keyword (:foreground ,comment))
      (org-todo (:foreground ,red :weight bold))
      (org-done (:foreground ,green :weight bold))
      (org-headline-done (:foreground ,comment))
      (org-priority (:foreground ,orange))
      (org-checkbox (:foreground ,blue))
      (org-tag (:foreground ,comment))
      (org-date (:foreground ,cyan))
      (org-footnote (:foreground ,cyan))
      (org-link (:foreground ,blue :underline t))
      (org-special-keyword (:foreground ,comment))
      (org-block (:background ,bg-highlight))
      (org-block-begin-line (:foreground ,comment :background ,bg-highlight))
      (org-block-end-line (:foreground ,comment :background ,bg-highlight))
      (org-code (:foreground ,orange :background ,bg-highlight))
      (org-verbatim (:foreground ,green :background ,bg-highlight))
      (org-formula (:foreground ,yellow))
      (org-table (:foreground ,cyan))
      (org-quote (:background ,bg-highlight :italic t))
      (org-verse (:background ,bg-highlight :italic t))
      (org-warning (:foreground ,warning :weight bold))
      (org-agenda-date (:foreground ,blue))
      (org-agenda-date-today (:foreground ,orange :weight bold))
      (org-agenda-date-weekend (:foreground ,comment))
      (org-agenda-structure (:foreground ,purple :weight bold))
      
      ;; Awesome-tray faces
      ;; Base faces for awesome-tray
      (awesome-tray-default-face (:foreground ,fg :weight bold))
      (awesome-tray-grey-face (:foreground ,comment :weight bold))
      (awesome-tray-red-face (:foreground ,red :weight bold))
      (awesome-tray-green-face (:foreground ,green :weight bold))
      (awesome-tray-green-path-face (:foreground ,green2 :weight bold))
      (awesome-tray-blue-face (:foreground ,blue :weight bold))
      (awesome-tray-blue-bright-face (:foreground ,blue1 :weight bold))
      (awesome-tray-orange-face (:foreground ,orange :weight bold))
      (awesome-tray-yellow-face (:foreground ,yellow :weight bold))
      (awesome-tray-pink-face (:foreground ,magenta :weight bold))
      (awesome-tray-magenta-face (:foreground ,magenta2 :weight bold))
      (awesome-tray-cyan-face (:foreground ,cyan :weight bold))
      
      ;; Module-specific faces
      (awesome-tray-module-git-face (:inherit awesome-tray-red-face))
      (awesome-tray-module-awesome-tab-face (:inherit awesome-tray-pink-face))
      (awesome-tray-module-rvm-face (:inherit awesome-tray-blue-face))
      (awesome-tray-module-circe-face (:inherit awesome-tray-blue-face))
      (awesome-tray-module-mode-name-face (:inherit awesome-tray-green-face))
      (awesome-tray-module-location-face (:inherit awesome-tray-orange-face))
      (awesome-tray-module-location-or-page-face (:inherit awesome-tray-orange-face))
      (awesome-tray-module-word-count-face (:inherit awesome-tray-orange-face))
      (awesome-tray-module-anzu-face (:inherit awesome-tray-orange-face))
      (awesome-tray-module-github-face (:inherit awesome-tray-cyan-face))
      (awesome-tray-module-hostname-face (:inherit awesome-tray-cyan-face))
      (awesome-tray-module-volume-face (:inherit awesome-tray-cyan-face))
      (awesome-tray-module-mpd-face (:inherit awesome-tray-cyan-face))
      (awesome-tray-module-date-face (:inherit awesome-tray-grey-face))
      (awesome-tray-module-celestial-face (:inherit awesome-tray-grey-face))
      (awesome-tray-module-last-command-face (:inherit awesome-tray-blue-bright-face))
      (awesome-tray-module-buffer-name-face (:inherit awesome-tray-orange-face))
      (awesome-tray-module-file-path-face (:inherit awesome-tray-green-path-face))
      (awesome-tray-module-parent-dir-face (:inherit awesome-tray-green-path-face))
      (awesome-tray-module-evil-face (:inherit awesome-tray-cyan-face))
      (awesome-tray-module-meow-face (:inherit awesome-tray-cyan-face))
      (awesome-tray-module-battery-face (:inherit awesome-tray-cyan-face))
      (awesome-tray-module-buffer-read-only-face (:inherit awesome-tray-red-face))
      (awesome-tray-module-belong-face (:inherit awesome-tray-red-face))
      (awesome-tray-module-input-method-face (:inherit awesome-tray-cyan-face))
      (awesome-tray-module-clock-face (:inherit awesome-tray-blue-bright-face))
      (awesome-tray-module-org-pomodoro-face (:inherit awesome-tray-magenta-face))
      (awesome-tray-module-pdf-view-page-face (:inherit awesome-tray-pink-face))
      (awesome-tray-module-flymake-error (:inherit awesome-tray-red-face))
      (awesome-tray-module-flymake-warning (:inherit awesome-tray-yellow-face))
      (awesome-tray-module-flymake-note (:inherit awesome-tray-blue-bright-face))
      )))

(defmacro tokyonight-themes--with-variant-colors (variant &rest body)
  "Execute BODY with the color palette of a specified theme VARIANT."
  (declare (indent defun))
  `(let ,(append (symbol-value (tokyonight-themes--variant-colors-symbol variant))
                 tokyonight-themes-custom-colors)
     ,@body))

(defmacro tokyonight-themes--define-theme (theme-name variant)
  "Define theme THEME-NAME for the tokyonight-themes VARIANT."
  (let ((doc (format "The Tokyo Night %s theme" variant)))
    `(progn
       (tokyonight-themes--with-variant-colors
         ,variant
         (apply 'custom-theme-set-faces ',theme-name
                (tokyonight-themes--face-specs))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide 'tokyonight-themes)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:

;;; tokyonight-themes.el ends here
