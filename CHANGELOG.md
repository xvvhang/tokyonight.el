# Changelog

All notable changes to Tokyo Night Themes for Emacs will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.1] - 2025-06-09

### Added
- **awesome-tray support** - Complete face definitions for the awesome-tray mode-line replacement
  - Base faces: default, grey, red, green, blue, orange, yellow, pink, magenta, cyan
  - Module-specific faces: git, buffer-name, location, date, evil, battery, and 20+ more
  - Consistent theming across all four variants (Night, Storm, Moon, Day)
  - Proper inheritance from base color palette for theme consistency

## [1.0.0] - 2025-06-09

### Added
- **Tokyo Night theme framework** - Core system supporting multiple variants
- **Night variant** - Classic dark theme with deep blue backgrounds
- **Storm variant** - Darker variant with deeper blue tones for low-light environments
- **Moon variant** - Softer dark variant with muted colors and warm purples
- **Day variant** - Light theme for daytime use with excellent readability
- **Comprehensive face support** - 100+ face definitions covering:
  - Built-in Emacs faces (font-lock, line numbers, mode-line, etc.)
  - Popular packages (Org mode, Magit, Company, Flycheck, etc.)
  - Terminal and ANSI color support
  - Git integration colors
- **Customization system** - User-configurable options for:
  - Italic comments and keywords
  - Org-mode heading heights and styling
  - Custom color overrides
- **Multiple installation methods** - Support for manual, use-package, and Doom Emacs
- **Complete documentation** - README with examples, configuration guide, and advanced usage
- **MIT License** - Open source licensing for maximum compatibility

### Features
- Faithful port of [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) color palettes
- Autoload cookies for seamless theme loading
- Theme switching utilities and examples
- WCAG-compliant contrast ratios where possible
- Comprehensive terminal color support (16 colors)
- Git diff and status color integration

[1.0.1]: https://github.com/xvvhang/tokyo-night.el/releases/tag/v1.0.1
[1.0.0]: https://github.com/xvvhang/tokyo-night.el/releases/tag/v1.0.0
