return {
   "neovim/nvim-lspconfig",
   event = { "BufReadPre", "BufNewFile" },
   dependencies = { "hrsh7th/cmp-nvim-lsp" },
   config = function()
       local lspconfig = require("lspconfig")
       
       -- Disable all diagnostics
       vim.diagnostic.config({
           virtual_text = false,
           signs = false,
           underline = false,
           update_in_insert = false,
           severity_sort = false,
       })

       -- Basic keymaps
       vim.api.nvim_create_autocmd("LspAttach", {
           callback = function(ev)
               local opts = { buffer = ev.buf }
               vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
               vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
           end,
       })

       -- Configure clangd with minimal settings
       lspconfig.clangd.setup({
           capabilities = require("cmp_nvim_lsp").default_capabilities(),
           cmd = {
               "clangd",
               "--clang-tidy=false",
               "--header-insertion=never",
               "--completion-style=detailed",
               "--function-arg-placeholders=false",
               "--fallback-style=none"
           },
           init_options = {
               usePlaceholders = true,
               completeUnimported = true,
               clangdFileStatus = true
           },
       })
   end,
}

