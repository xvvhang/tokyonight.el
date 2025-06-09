;;; tokyo-night-night-theme.el --- Tokyo Night theme for Emacs - Night variant

;; Copyright (C) 2025

;; Author: Tokyo Night Themes
;; URL: https://github.com/tokyo-night-emacs/tokyo-night.el
;; Version: 1.0.0
;; Package-Requires: ((emacs "24.3"))
;; Keywords: faces, themes

;; This file is not part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this file.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Tokyo Night Night theme for Emacs.
;; 
;; This is the classic dark variant of the Tokyo Night theme family,
;; inspired by the vibrant colors of Tokyo at night. It features
;; deep blue backgrounds with bright, colorful syntax highlighting
;; that's easy on the eyes during long coding sessions.
;;
;; To use this theme, load it with:
;;   (load-theme 'tokyo-night-night t)

;;; Code:

(require 'tokyo-night-themes)

;;;###autoload
(deftheme tokyo-night-night
  "Tokyo Night - The classic dark theme.
Based on the Night variant from tokyonight.nvim by folke.")

;; Define the tokyo-night-night theme using the macro from tokyo-night-themes
(tokyo-night-themes--define-theme tokyo-night-night night)

(provide-theme 'tokyo-night-night)

;;; tokyo-night-night-theme.el ends here
