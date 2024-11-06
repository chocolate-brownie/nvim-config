return {
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = true, -- Simple default configuration
}

--[[
### How to Use `nvim-surround`:

This plugin allows you to easily add, change, or delete surrounding characters (like parentheses, quotes, brackets, etc.) around text.

- **Add Surroundings:**
  - In **normal mode**, press `ys{motion}{char}` to surround the text specified by {motion} with {char}.
    - Example: `ysiw"` will surround the current word with double quotes.
    - Example: `ysap)` will surround the current paragraph with parentheses.

  - In **visual mode**, select the text you want to surround and press `S{char}`.
    - Example: In visual mode, select text and press `S)` to surround it with parentheses.

- **Delete Surroundings:**
  - In **normal mode**, press `ds{char}` to delete the surrounding {char}.
    - Example: `ds"` will remove the surrounding double quotes around the current text object.
    - Example: `ds(` will remove the surrounding parentheses.

- **Change Surroundings:**
  - In **normal mode**, press `cs{old_char}{new_char}` to change the surrounding {old_char} to {new_char}.
    - Example: `cs"'` will change surrounding double quotes to single quotes.
    - Example: `cs({` will change surrounding parentheses to curly braces.

- **Repeat Last Surround:**
  - Press `.` in **normal mode** to repeat the last surround command.

This makes adding, modifying, or removing surrounding characters extremely efficient for working with code, markup, and more.
]]

