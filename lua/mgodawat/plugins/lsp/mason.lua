return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        "jay-babu/mason-nvim-dap.nvim" -- Add mason-nvim-dap for managing debug adapters
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        -- import mason-tool-installer
        local mason_tool_installer = require("mason-tool-installer")

        -- import mason-nvim-dap
        local mason_nvim_dap = require("mason-nvim-dap") -- Add mason-nvim-dap for DAP setup

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "clangd",   -- C/C++
                "pyright",  -- Python
                "lua_ls",   -- Lua (optional if you work with Lua for neovim config)
            },
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier",  -- optional (if needed for formatting other files)
                "stylua",    -- optional (Lua formatter)
                "isort",     -- Python formatter
                "black",     -- Python formatter
                "pylint",    -- Python linter
                "shfmt",     -- Shell script formatter
                "clang-format", -- C/C++ formatter
                "cpplint",   -- C/C++ linter
            },
        })

        -- Setup mason-nvim-dap to manage DAP installations
        mason_nvim_dap.setup({
            ensure_installed = {
                "cpptools",  -- Debug adapter for C/C++ (vscode-cpptools)
            }
        })
    end,
}

