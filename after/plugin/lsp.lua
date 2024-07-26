local lsp_zero = require('lsp-zero')

-- On attach function for default keymaps
lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Mason setup
require('mason').setup({})

require('mason-lspconfig').setup({
  ensure_installed = {
    'clangd',      -- C, C++
    'pyright',     -- Python
    'lua_ls',      -- Lua (formerly sumneko_lua)
    -- Add more servers here if needed
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
    -- Additional handlers for specific servers can be added here
  },
})

-- Specific LSP configurations
local lspconfig = require('lspconfig')

-- Clangd configuration for C, C++
lspconfig.clangd.setup({
  cmd = { "clangd", "--background-index" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git"),
})

-- Pyright configuration for Python
lspconfig.pyright.setup({
  filetypes = { "python" },
  root_dir = lspconfig.util.root_pattern(".git", "setup.py", "setup.cfg", "pyproject.toml", "requirements.txt"),
})

-- Lua configuration for Lua (formerly sumneko_lua)
lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';')
      },
      diagnostics = {
        globals = { 'vim' }
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
      },
      telemetry = {
        enable = false,
      },
    },
  },
})

-- Completion and snippets setup
local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
  }),
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'path' },
  },
})

-- Finalize LSP setup
lsp_zero.setup()

