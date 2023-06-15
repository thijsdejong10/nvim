-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Set border of some LazyVim plugins to rounded
local function bordered(hl_name)
  return {
    { "╭", hl_name },
    { "─", hl_name },
    { "╮", hl_name },
    { "│", hl_name },
    { "╯", hl_name },
    { "─", hl_name },
    { "╰", hl_name },
    { "│", hl_name },
  }
end
return {
  -- lazyvim.plugins.coding
  {
    "nvim-cmp",
    opts = {
      window = {
        completion = bordered("CmpBorder"),
        documentation = bordered("CmpDocBorder"),
      },
    },
  },
}
