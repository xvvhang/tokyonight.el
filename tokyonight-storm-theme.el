;;; tokyonight-storm-theme.el --- Tokyo Night Storm theme -*- lexical-binding: t -*-

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

;; Tokyo Night Storm is a darker variant of the Tokyo Night theme with
;; deeper blue tones and subtle color variations. This theme provides
;; excellent contrast while maintaining the elegant aesthetic of the
;; original Tokyo Night theme. Perfect for extended coding sessions
;; in low-light environments.

;;; Code:

(require 'tokyonight-themes)

;;;###autoload
(deftheme tokyonight-storm
  "Tokyo Night Storm - A darker variant with deeper blue tones.
Based on the Storm variant from tokyonight.nvim by folke.")

(tokyonight-themes--define-theme tokyonight-storm storm)

(provide-theme 'tokyonight-storm)

;;; tokyonight-storm-theme.el ends here
