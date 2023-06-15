return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    sources = {
      "filesystem",
      "buffers",
      "git_status",
      "document_symbols",
    },
    close_if_last_window = true,
    window = {
      width = 30,
      mappings = {
        ["l"] = "open",
        ["h"] = "navigate_up",
      },
    },
    source_selector = {
      winbar = true,
      statusline = true,
    },
  },
}
