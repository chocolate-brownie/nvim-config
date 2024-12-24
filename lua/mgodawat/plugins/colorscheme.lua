-- Colorscheme
return {
   {
       "folke/tokyonight.nvim",
       name = "tokyonight",
       priority = 1000,
       opts = {
           style = "moon",
           transparent = true,
           styles = {
               functions = { bold = true },
               comments = { italic = true },
           },
           on_highlights = function(hl, c)
               hl.Function = { fg = c.blue, bold = true }
               hl.Identifier = { fg = c.cyan }
               hl.Todo = { fg = c.yellow, bold = true }
               hl.Comment = { fg = c.comment, italic = true }
               hl.Error = { fg = c.red, bold = true }
           end
       },
       init = function()
           vim.cmd("colorscheme tokyonight")
       end,
   },
}


