# 42 School Neovim Configuration

A customized Neovim configuration based on [kickstart.nvim](https://github.com/tjdevries), optimized for 42 School C/C++ projects.
![image](https://github.com/user-attachments/assets/b5c696ae-7f07-4cb4-a177-074bba421caa)

## ✨ Features

- LSP support for C/C++
- Integrated 42 Norminette formatter (`:CFormatter42`)
- File explorer (nvim-tree)
- Fuzzy finder (telescope)
- Git integration
- Auto-completion
- Syntax highlighting

## 🚀 Prerequisites

- Neovim >= 0.9.0
- Git
- gcc/clang compiler
- ripgrep (for telescope)
- A C/C++ LSP server (clangd)
- 42 Norminette

## ⚡ Installation

```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone repository
git clone https://github.com/chocolate-brownie/nvim-config ~/.config/nvim

# Install plugins (run inside neovim)
:Lazy
```

### 42 Specific
- `:CFormatter42` - Run norminette formatter
- `:make` - Compile project using Makefile

## 📦 Included Plugins

- lazy.nvim - Package manager
- nvim-lspconfig - LSP configuration
- telescope.nvim - Fuzzy finder
- nvim-treesitter - Syntax highlighting
- nvim-neo-tree.lua - File explorer

### Header File Settings

Default header settings are configured for 42 School projects:
```lua
vim.g.user42 = 'your_login'
vim.g.mail42 = 'your_email@student.42.fr'
```

To update your header information:
1. Open `init.lua`
2. Locate the header configuration section
3. Replace `your_login` with your 42 intra username
4. Replace `your_email@student.42.fr` with your 42 email

The header template follows 42's norm requirements and will be automatically inserted using the configured command (default: `:Stdheader`).

## ⚠️ Troubleshooting
RTFM (init.lua)
https://www.youtube.com/watch?v=m8C0Cq9Uv9o&t=103s

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Submit a pull request

## 🙏 Credits

- [TJ DeVries](https://github.com/tjdevries) - Original kickstart.nvim
- 42 School community
