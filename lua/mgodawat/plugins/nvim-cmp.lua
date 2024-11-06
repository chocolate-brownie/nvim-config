return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path", -- source for file system paths
        "hrsh7th/cmp-nvim-lsp", -- LSP source for completions
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*", -- latest release
            build = "make install_jsregexp", -- install optional dependency for snippet support
        },
        "saadparwaiz1/cmp_luasnip", -- for autocompletion with snippets
        "rafamadriz/friendly-snippets", -- useful snippets for various languages
        "onsails/lspkind.nvim", -- VSCode-like pictograms for completion items
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")
        local lspkind = require("lspkind")

        -- Load VSCode-style snippets from the friendly-snippets plugin
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            completion = {
                -- Do not automatically select the first item in the menu
                completeopt = "menu,menuone,noselect",
            },
            snippet = {
                -- Configure LuaSnip for snippet expansion
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
                ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
                ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- scroll up in docs
                ["<C-f>"] = cmp.mapping.scroll_docs(4), -- scroll down in docs
                ["<C-Space>"] = cmp.mapping.complete(), -- manually trigger completion
                ["<C-e>"] = cmp.mapping.abort(), -- close completion window
                ["<CR>"] = cmp.mapping.confirm({ select = false }), -- confirm selection manually
            }),
            -- Autocompletion sources
            sources = cmp.config.sources({
                { name = "nvim_lsp" }, -- LSP-based autocompletion for language support
                { name = "luasnip" }, -- snippets autocompletion
                { name = "buffer" }, -- current buffer text
                { name = "path" }, -- filesystem paths
            }),
            -- Formatting of completion items, including pictograms for different completion sources
            formatting = {
                format = lspkind.cmp_format({
                    maxwidth = 50, -- limit item width
                    ellipsis_char = "...", -- indicate truncation with ellipsis
                }),
            },
        })
    end,
}


