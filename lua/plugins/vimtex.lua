return {
  {
    "lervag/vimtex",
    config = function()
      vim.g.vimtex_compiler_method = "tectonic"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "micangl/cmp-vimtex" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, { { name = "vimtex" } }))
    end,
  },
}
