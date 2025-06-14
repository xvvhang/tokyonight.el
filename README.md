# 🏙 Tokyo Night for Emacs

<div align="center">

![Emacs](https://img.shields.io/badge/Emacs-24.3+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)
![Version](https://img.shields.io/badge/Version-2.0.0-orange.svg)

**A clean, elegant Emacs theme inspired by the vibrant night skyline of Tokyo**

*Faithful port of the popular [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) theme for Neovim*

</div>

---

## ✨ Features

- 🌃 **Four beautiful variants**: Night, Storm, Moon, and Day
- 🎨 **Authentic colors**: Carefully ported from the original tokyonight.nvim
- 🔧 **Extensive coverage**: 100+ face definitions for core Emacs and popular packages
- 🖥️ **Terminal support**: Complete 16-color terminal palette
- 🔀 **Git integration**: Proper diff and status colors
- ⚙️ **Customizable**: Easy color customization system
- 📦 **Lightweight**: Pure Emacs Lisp with no dependencies
- 🚀 **awesome-tray support**: Complete theming for the awesome-tray mode-line replacement

## 🎨 Theme Variants

### 🌙 Night (Dark)
The classic dark theme with deep blue backgrounds and vibrant syntax highlighting.
```elisp
(load-theme 'tokyonight-night t)
```

### ⛈️ Storm (Darker)
A darker variant with deeper blue tones, perfect for low-light environments.
```elisp
(load-theme 'tokyonight-storm t)
```

### 🌕 Moon (Soft Dark)
A softer dark variant with muted colors and warmer purple tones.
```elisp
(load-theme 'tokyonight-moon t)
```

### ☀️ Day (Light)
A clean light theme for daytime use with excellent readability.
```elisp
(load-theme 'tokyonight-day t)
```

## 📦 Installation

### Method 1: Manual Installation

1. Clone this repository:
```bash
git clone https://github.com/xvvhang/tokyonight.el.git
```

2. Add to your Emacs configuration:
```elisp
(add-to-list 'custom-theme-load-path "/path/to/tokyonight.el/")
(load-theme 'tokyonight-night t)  ; or storm, moon, day
```

### Method 2: use-package + straight.el

```elisp
(use-package tokyonight-themes
  :straight (:host github :repo "xvvhang/tokyonight.el")
  :config
  (load-theme 'tokyonight-night t))
```

### Method 3: Doom Emacs

Add to your `packages.el`:
```elisp
(package! tokyonight-themes
  :recipe (:host github :repo "xvvhang/tokyonight.el"))
```

Then in your `config.el`:
```elisp
(setq doom-theme 'tokyonight-night)
```

## 🚀 Quick Start

```elisp
;; Load your preferred variant
(load-theme 'tokyonight-night t)   ; Classic dark
(load-theme 'tokyonight-storm t)   ; Darker variant
(load-theme 'tokyonight-moon t)    ; Soft variant
(load-theme 'tokyonight-day t)     ; Light variant
```

## 📦 Supported Packages

Tokyo Night themes provide beautiful styling for many popular Emacs packages:

### Mode-line Replacements
- **[awesome-tray](https://github.com/manateelazycat/awesome-tray)** - Complete face definitions for all modules including git, evil, org, battery, and more

### Core Emacs
- Font Lock (syntax highlighting)
- Line numbers
- Isearch
- Org mode
- Dired
- Compilation buffers
- And many more built-in faces

*More package support is planned for future releases. Feel free to request support for your favorite packages!*

## ⚙️ Configuration

### Basic Customization

```elisp
;; Enable italic comments (default: t)
(setq tokyonight-themes-comment-italic t)

;; Enable italic keywords (default: t)
(setq tokyonight-themes-keyword-italic t)

;; Enable org-mode height scaling (default: t)
(setq tokyonight-themes-org-height t)

;; Enable org-mode bold headings (default: t)
(setq tokyonight-themes-org-bold t)
```

### Custom Colors

You can override any color in the palette:

```elisp
(setq tokyonight-themes-custom-colors
      '((bg "#1a1b26")           ; Custom background
        (fg "#c0caf5")           ; Custom foreground
        (blue "#7aa2f7")         ; Custom blue
        (green "#9ece6a")))      ; Custom green

;; Apply after setting custom colors
(load-theme 'tokyonight-night t)
```

### Complete Color Palette

<details>
<summary>Click to view all available colors</summary>

#### Night Variant Colors
```elisp
;; Backgrounds
bg           "#1a1b26"    ; Main background
bg-dark      "#16161e"    ; Darker background
bg-highlight "#292e42"    ; Highlight background
bg-visual    "#283457"    ; Visual selection

;; Foregrounds  
fg           "#c0caf5"    ; Main foreground
fg-dark      "#a9b1d6"    ; Darker foreground
comment      "#565f89"    ; Comments

;; Core Colors
blue         "#7aa2f7"    ; Functions, keywords
green        "#9ece6a"    ; Strings
orange       "#ff9e64"    ; Constants, numbers
purple       "#9d7cd8"    ; Keywords, operators
red          "#f7768e"    ; Errors, warnings
yellow       "#e0af68"    ; Variables, warnings
cyan         "#7dcfff"    ; Types, specials
magenta      "#bb9af7"    ; Constructors
```

*See the theme files for complete color definitions for all variants.*

</details>

## 🎯 Supported Packages

Tokyo Night themes provide excellent support for popular Emacs packages:

### Core Emacs
- Font Lock (syntax highlighting)
- Line numbers and fringe
- Mode line and minibuffer  
- Isearch and lazy highlight
- Dired and help modes
- Compilation and shell modes

### Popular Packages
- **Org Mode**: Beautiful heading styles with optional scaling
- **Magit**: Proper git diff and status colors
- **Company/Corfu**: Completion popup styling
- **Flycheck**: Error/warning/info indicators
- **Rainbow Delimiters**: Balanced parentheses highlighting
- **Which-Key**: Command helper styling
- **Treemacs/NeoTree**: File tree styling
- **Terminal**: Full ansi-color support

## 🔧 Advanced Usage

### Theme Switching Function

```elisp
(defun my/cycle-tokyonight-themes ()
  "Cycle through Tokyo Night theme variants."
  (interactive)
  (let* ((themes '(tokyonight-night tokyonight-storm 
                   tokyonight-moon tokyonight-day))
         (current (car custom-enabled-themes))
         (next (or (cadr (member current themes))
                   (car themes))))
    (load-theme next t)))

(global-set-key (kbd "C-c t") #'my/cycle-tokyonight-themes)
```

### Time-based Theme Switching

```elisp
(defun my/load-theme-by-time ()
  "Load theme based on time of day."
  (let ((hour (string-to-number (format-time-string "%H"))))
    (if (and (>= hour 6) (< hour 18))
        (load-theme 'tokyonight-day t)
      (load-theme 'tokyonight-night t))))

;; Load appropriate theme on startup
(my/load-theme-by-time)
```

### System Theme Integration (macOS)

```elisp
(defun my/sync-with-system-theme ()
  "Sync Emacs theme with macOS system appearance."
  (interactive)
  (let ((appearance (shell-command-to-string 
                     "defaults read -g AppleInterfaceStyle 2>/dev/null")))
    (if (string-match "Dark" appearance)
        (load-theme 'tokyonight-night t)
      (load-theme 'tokyonight-day t))))
```

## 🎨 Color Philosophy

Tokyo Night themes follow a carefully designed color philosophy:

- **Backgrounds**: Deep blues that reduce eye strain
- **Syntax**: Vibrant colors that maintain excellent contrast
- **UI Elements**: Subtle but clear distinction for interface elements
- **Accessibility**: WCAG-compliant contrast ratios where possible

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. **Bug Reports**: Open an issue with details about face inconsistencies
2. **Package Support**: Request support for additional Emacs packages
3. **Color Improvements**: Suggest improvements to color choices
4. **Documentation**: Help improve this README or add examples

### Development Setup

```bash
git clone https://github.com/xvvhang/tokyonight.el.git
cd tokyonight.el

# Test themes
emacs --batch --eval "(progn 
  (add-to-list 'load-path \".\") 
  (load \"tokyonight-themes\") 
  (load \"tokyonight-night-theme\")
  (message \"Theme loaded successfully\"))"
```

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **[folke](https://github.com/folke)** - Creator of the original [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- **[enkia](https://github.com/enkia)** - Creator of the original [Tokyo Night VS Code theme](https://github.com/enkia/tokyo-night-vscode-theme)
- The Emacs community for inspiration and feedback

## 📊 Comparison with Original

| Feature | tokyonight.nvim | tokyonight.el |
|---------|----------------|----------------|
| Variants | 4 (night, storm, moon, day) | ✅ 4 (night, storm, moon, day) |
| Color Accuracy | Original | ✅ 100% Faithful |
| Terminal Colors | ✅ 16 colors | ✅ 16 colors |
| Plugin Support | 100+ plugins | ✅ Core + Popular packages |
| Customization | ✅ Full | ✅ Full |

---

<div align="center">

**Made with ❤️ for the Emacs community**

[⭐ Star this repo](https://github.com/xvvhang/tokyonight.el) • [🐛 Report issues](https://github.com/xvvhang/tokyonight.el/issues) • [💡 Request features](https://github.com/xvvhang/tokyonight.el/discussions)

</div>