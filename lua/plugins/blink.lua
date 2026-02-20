local function is_dap_buffer()
  return require("cmp_dap").is_dap_buffer()
end

return {
  { "saghen/blink.compat", opts = { impersonate_nvim_cmp = true } },
  {
    "saghen/blink.cmp",
    dependencies = { "rcarriga/cmp-dap", "jc-doyle/cmp-pandoc-references", "saghen/blink.compat" },
    opts = {
      sources = {
        compat = { "pandoc_references" },
        providers = {
          pandoc_references = {
            override = {
              get_trigger_characters = function()
                return { "@" }
              end,
            },
          },
        },
      },
      -- enabled = function()
      --   return vim.bo.buftype ~= "prompt" or is_dap_buffer()
      -- end,
      -- sources = {
      --   -- adding any nvim-cmp sources here will enable them
      --   -- with blink.compacache_loader: module cmp not foundt
      --   compat = { "pandoc_references" },
      --   default = function(_)
      --     if is_dap_buffer() then
      --       return { "buffer", "dap" }
      --     else
      --       return { "lsp", "path", "snippets", "buffer" }
      --     end
      --   end,
      --   providers = {
      --     dap = { name = "dap", module = "blink.compat.source" },
      --     pandoc_references = {
      --       override = {
      --         get_trigger_characters = function()
      --           return { "@" }
      --         end,
      --       },
      --     },
      --   },
      -- },

      keymap = {
        preset = "default",
        ["<C-a>"] = { "select_and_accept", "fallback" },
      },
    },
  },
}
