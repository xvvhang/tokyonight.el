;;; tokyo-night-moon-theme.el --- Tokyo Night Moon theme -*- lexical-binding: t -*-

;; Copyright (C) 2025

;; Author: Tokyo Night Themes Contributors
;; Maintainer: Tokyo Night Themes Contributors
;; URL: https://github.com/xvvhang/tokyo-night.el
;; Version: 1.0.0
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

;; Tokyo Night Moon is a softer variant of the Tokyo Night theme with
;; muted colors and a warmer feel. This theme features a slightly
;; lighter background with gentle purple tones, perfect for users
;; who prefer a less contrasted dark theme with a calming atmosphere.

;;; Code:

(require 'tokyo-night-themes)

;;;###autoload
(deftheme tokyo-night-moon
  "Tokyo Night Moon - A softer variant with muted colors.
Based on the Moon variant from tokyonight.nvim by folke.")

(tokyo-night-themes--define-theme tokyo-night-moon moon)

(provide-theme 'tokyo-night-moon)

;;; tokyo-night-moon-theme.el ends here
