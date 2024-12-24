-- Colorscheme
return {
   {
       "rose-pine/neovim",
       name = "rose-pine",
       priority = 1000,
       opts = {
           dark_variant = "main",
           bold_vert_split = false,
           dim_nc_background = false,
           disable_background = true,
           disable_float_background = true,
           disable_italics = true,
           highlight_groups = {
               Function = { fg = "rose", bold = true },
               Identifier = { fg = "pine" },
               Todo = { fg = "gold", bold = true },
               Comment = { fg = "muted", italic = true },
               Error = { fg = "love", bold = true },
           },
       },
       init = function()
           vim.cmd("colorscheme rose-pine")
       end,
   },
}




