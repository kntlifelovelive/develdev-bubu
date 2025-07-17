-- ~/.config/nvim/lua/plugins/formatter.lua
return {
  "stevearc/conform.nvim",
  event = { "VeryLazy" },
  config = function()
    require("conform").setup({
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        html = { "prettier" },
        css = { "prettier" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        bash = { "shfmt" },
      },
    })
  end,
}
