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
git clone [your-repo-url] ~/.config/nvim

# Install plugins (run inside neovim)
:PackerSync
```

## 🎮 Key Bindings

### General
- `<Space>` - Leader key
- `<C-h/j/k/l>` - Navigate splits
- `<C-w>` - Window commands

### File Navigation
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Browse buffers
- `<leader>e` - Toggle file explorer

### LSP
- `gd` - Go to definition
- `K` - Hover documentation
- `<leader>ca` - Code actions
- `<leader>rn` - Rename
- `[d`, `]d` - Navigate diagnostics

### 42 Specific
- `:CFormatter42` - Run norminette formatter
- `:make` - Compile project using Makefile

## 📦 Included Plugins

- packer.nvim - Package manager
- nvim-lspconfig - LSP configuration
- nvim-cmp - Completion engine
- telescope.nvim - Fuzzy finder
- nvim-treesitter - Syntax highlighting
- nvim-tree.lua - File explorer
- formatter.nvim - Code formatting

## 🛠️ Customization

Edit these files to customize your setup:
- `init.lua` - Main configuration
- `lua/plugins.lua` - Plugin list
- `lua/lsp.lua` - LSP settings
- `lua/keymaps.lua` - Key bindings

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

1. LSP not working:
   ```bash
   # Install clangd
   sudo apt install clangd-12  # Ubuntu
   brew install llvm          # macOS
   ```

2. Telescope errors:
   ```bash
   # Install ripgrep
   sudo apt install ripgrep   # Ubuntu
   brew install ripgrep      # macOS
   ```

## 📝 License

MIT License - see LICENSE file

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch
3. Submit a pull request

## 🙏 Credits

- [TJ DeVries](https://github.com/tjdevries) - Original kickstart.nvim
- 42 School community
