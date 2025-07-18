return {
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "bash", "html", "css", "javascript", "lua", "python", "json", "markdown", "vim"
      },
      highlight = { enable = true },
      indent = { enable = true },
      auto_install = true,
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "stevearc/conform.nvim", -- Autoformat plugin
    event = { "BufWritePre" },
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        json = { "prettier" },
      },
    },
    config = function(_, opts)
      require("conform").setup(opts)
    end,
  },
}
