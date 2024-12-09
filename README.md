# Kali Configurations
This repository contains the personalized configurations used in my Kali Linux virtual
machine. The goal is to document and version key configurations to facilitate
maintenance and replication in case of reinstallation.
---
## Files Included
- **Neovim Configuration (`init.lua`)**:
- Autocompletion with `nvim-cmp`.
- Advanced syntax highlighting with `Treesitter`.
- Visual enhancements such as:
- Status bar: `lualine`.
- File explorer: `nvim-tree`.
- Quick searches: `telescope`.
- Code indentation and block highlighting: `indent-blankline`.
- Automatic delimiter closing: `nvim-autopairs`.
- **Zsh Configuration (`.zshrc`)**:
- Customized aliases.
- Advanced prompt configuration with `oh-my-zsh`.
- **BSPWM Configuration (`bspwmrc`)**:
- Window manager setup.
- **SXHKD Configuration (`sxhkdrc`)**:
- Keyboard shortcuts for window management.
- **Bash Configuration (`.bashrc`)**:
- Alias definitions and environment variables.
---
## Recent Changes
- **2024-12-08**:
- Added Zsh configuration to the repository.
- Included BSPWM and SXHKD configurations.
- **2024-11-29**:
- Improved Neovim with `nvim-autopairs` and visual plugins.
- **2024-11-28**:
- Updated Neovim's colors and line numbering.
- Enhanced syntax highlighting with `Treesitter`.
---
## Usage
1. **Neovim Configuration**:
- Copy `init.lua` to:
```
~/.config/nvim/init.lua
```
- Install `packer.nvim` for managing plugins:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim
~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
- Open Neovim and run:
```
:PackerSync
```
2. **Zsh Configuration**:
- Copy `.zshrc` to:
```
~/.zshrc
```
- Reload the configuration:
```
source ~/.zshrc
```
3. **BSPWM and SXHKD Configuration**:
- Copy `bspwmrc` and `sxhkdrc` to their respective locations:
```
~/.config/bspwm/bspwmrc
~/.config/sxhkd/sxhkdrc
```
4. **Bash Configuration**:
- Copy `.bashrc` to:
```
~/.bashrc
```
- Reload the configuration:
```
source ~/.bashrc
```
---
## Requirements
- **Neovim 0.7+**
- Additional tools for Neovim:
- `ripgrep` for advanced searches (`telescope` plugin).
---
## Contributions
This repository is constantly evolving as I learn and configure new tools in my Kali
Linux environment. Suggestions and improvements are welcome.
