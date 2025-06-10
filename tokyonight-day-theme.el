;;; tokyonight-day-theme.el --- Tokyo Night Day theme -*- lexical-binding: t -*-

;; Copyright (C) 2025

;; Author: Tokyo Night Themes Contributors
;; Maintainer: Tokyo Night Themes Contributors
;; URL: https://github.com/xvvhang/tokyonight.el
;; Version: 2.0.0
;; Package-Requires: ((emacs "24.3"))

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

;; Tokyo Night Day is the light variant of the Tokyo Night theme family.
;; This theme provides excellent readability during daytime use with
;; a clean light background and vibrant colors that maintain the Tokyo
;; Night aesthetic while being easier on the eyes in bright environments.

;;; Code:

(require 'tokyonight-themes)

;;;###autoload
(deftheme tokyonight-day
  "Tokyo Night Day - A light variant for daytime use.
Based on the Day variant from tokyonight.nvim by folke.")

(tokyonight-themes--define-theme tokyonight-day day)

(provide-theme 'tokyonight-day)

;;; tokyonight-day-theme.el ends here
