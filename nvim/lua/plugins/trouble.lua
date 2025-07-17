return {
  "folke/trouble.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},

  keys = {
    { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = " Toggle Trouble" },
    { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "🌍 Workspace Diagnostics" },
    { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "📄 Document Diagnostics" },
    { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", desc = "🧯 Quickfix List" },
    { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", desc = "📍 Location List" },
    { "gR", "<cmd>TroubleToggle lsp_references<cr>", desc = "🔍 LSP References" },
  },
}
