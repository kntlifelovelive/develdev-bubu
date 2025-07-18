return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Header banner
    dashboard.section.header.val = {
      [[                                                    ]],
      [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ]],
      [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ]],
      [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ]],
      [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ]],
      [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ]],
      [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ]],
      [[                                                    ]],
      [[🌺 "Trust your heart if the sea catch fire,            ]],
      [[live by love though the stars walk backward." 🌸🌾🌼🌹💘 ]],
    }

    -- Menu buttons
    dashboard.section.buttons.val = {
      dashboard.button("e", "📄  New File", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "🔍  Find File", ":Telescope find_files<CR>"),
      dashboard.button("r", "🕘  Recent", ":Telescope oldfiles<CR>"),
      dashboard.button("q", "🫡  Quit ", ":qa<CR>"),
    }

    -- Footer message (optional)
    dashboard.section.footer.val = {
      "💖 BuBu I love Babby",
    }

    alpha.setup(dashboard.config)
  end,
  event = "VimEnter",
}

