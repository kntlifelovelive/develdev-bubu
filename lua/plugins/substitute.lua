-- ~/.config/nvim/lua/plugins/substitute.lua
return {
  "gbprod/substitute.nvim",
  lazy = false,  -- always load (or use proper event/key binding)
  keys = {
    {
      "gs",
      function()
        require("substitute").operator()
      end,
      mode = "n",
      desc = "Substitute operator",
    },
    {
      "gss",
      function()
        require("substitute").line()
      end,
      mode = "n",
      desc = "Substitute line",
    },
    {
      "gS",
      function()
        require("substitute").visual()
      end,
      mode = "x",
      desc = "Substitute visual",
    },
  },
  config = function()
    require("substitute").setup()
  end,
}
