require("noice").setup({
  lsp = { progress = { enabled = false } },
})

local null_ls_token = nil
local ltex_token = nil

vim.lsp.handlers["$/progress"] = function(_, result, ctx)
  local value = result.value
  if not value.kind then
    return
  end

  local client_id = ctx.client_id
  local name = vim.lsp.get_client_by_id(client_id).name

  if name == "null-ls" then
    if result.token == null_ls_token then
      return
    end
    if value.title == "formatting" then
      null_ls_token = result.token
      return
    end
  end

  if name == "ltex" then
    if result.token == ltex_token then
      return
    end
    if value.title == "Checking document" then
      ltex_token = result.token
      return
    end
  end

  vim.notify(value.message, "info", {
    title = value.title,
  })
end
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
-- local function augroup(name)
--   return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
-- end
-- vim.api.nvim_create_autocmd("FileType", {
--   group = augroup("omni-autocomplete"),
--   pattern = { "tex" },
--   callback = function(event)
--     require("cmp").setup.buffer({
--       sources = { { name = "omni" } },
--     })
--   end,
-- })
