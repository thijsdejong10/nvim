-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
---- floating terminal
-- vim.api.nvim_del_keymap("n", "<c-/>")

local Util = require("lazyvim.util")
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end
local lazyterm = function()
  Util.float_term(nil, { cwd = Util.get_root(), border = "rounded" })
end

map("n", "Q", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
map("n", "<c-/>", ":ToggleTerm<CR>")
map("n", "<leader>r", ":w<CR>:TermExec cmd='py %'<CR>")
