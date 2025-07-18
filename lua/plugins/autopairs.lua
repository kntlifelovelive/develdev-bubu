return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local npairs = require("nvim-autopairs")
      local cmp = require("cmp")

      npairs.setup({})

      cmp.event:on(
        "confirm_done",
        npairs.on_confirm_done()
      )
    end,
  },
}
