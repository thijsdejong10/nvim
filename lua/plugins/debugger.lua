return {
  {
    "rcarriga/cmp-dap",
  },
  {
    require("cmp").setup({
      enabled = function()
        return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt" or require("cmp_dap").is_dap_buffer()
      end,
    }),
  },
  {
    require("cmp").setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
      sources = {
        { name = "dap" },
      },
    }),
  },
  -- "mfussenegger/nvim-dap-python",
  -- config = function()
  --   require("dap-python").setup("~/miniconda3/envs/rc/bin/python")
  -- end,
}
