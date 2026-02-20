-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
---- floating terminal
-- vim.api.nvim_del_keymap("n", "<c-/>")

-- local Util = require("lazyvim.util")
local map = LazyVim.safe_keymap_set

-- local lazyterm = function()
--   Util.float_term(nil, { cwd = Util.get_root(), border = "rounded" })
-- end

map("n", "Q", Snacks.bufdelete.delete, { desc = "Delete Buffer" })
map("n", "<c-/>", ":ToggleTerm<CR>")
map("n", "<leader>r", ":w<CR>:TermExec cmd='uv run %'<CR>")
map("t", "<esc>", [[<C-\><C-n>]])
