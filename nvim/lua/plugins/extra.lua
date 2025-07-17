return {
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" }
    }
  },

  -- autopairs
  {
    "windwp/nvim-autopairs",
    commit = "f580f0f16a81c16bc9043f3c740fe83f5e0b9a72",
    config = function()
      require("nvim-autopairs").setup({})
    end
  },

  -- indent-blankline
  {
    "lukas-reineke/indent-blankline.nvim",
    commit = "db8e3ef3f2dfda4b0e13238a2be6703b3b525f72",
    main = "ibl",
    opts = {}
  },
}
