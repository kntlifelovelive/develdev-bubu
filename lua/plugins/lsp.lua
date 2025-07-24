return {
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUninstall" },
    build = ":MasonUpdate",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "bashls",
          "pyright",
          "lua_ls",
          "html",
          "cssls",
          "tsserver",
          "jsonls",
          "yamlls",
          "taplo",
          "dockerls",
          "docker_compose_language_service",
          "marksman",
        },
        automatic_installation = true,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "SmiteshP/nvim-navic" },
    config = function()
      local lspconfig = require("lspconfig")
      local navic = require("nvim-navic")

      -- on_attach function ကို ပြင်ဆင်ခြင်း
      local on_attach = function(client, bufnr)
        if client.server_capabilities.documentSymbolProvider then
          navic.attach(client, bufnr)
        end

        local map = vim.keymap.set
        map("n", "K", vim.lsp.buf.hover, { buffer = bufnr, desc = "Hover Info" })
        map("n", "gd", vim.lsp.buf.definition, { buffer = bufnr, desc = "Go to Definition" })
        map("n", "gr", vim.lsp.buf.references, { buffer = bufnr, desc = "Go to References" })
        map("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr, desc = "Rename" })
      end

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
      if cmp_ok then
        capabilities = cmp_nvim_lsp.default_capabilities()
      end

      local servers = {
        bashls = {},
        pyright = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
        html = {},
        cssls = {},
        tsserver = {},
        jsonls = {},
        yamlls = {},
        taplo = {},
        dockerls = {},
        docker_compose_language_service = {},
        marksman = {},
      }

      for server, opts in pairs(servers) do
        local merged_opts = vim.tbl_deep_extend("force", {
          on_attach = on_attach,
          capabilities = capabilities,
        }, opts)
        lspconfig[server].setup(merged_opts)
      end

      -- diagnostic config
      vim.diagnostic.config({
        virtual_text = false,
        float = {
          border = "rounded",
          source = "always",
        },
        severity_sort = true,
        update_in_insert = false,
      })

      -- Winbar မှာ navic location ပြရန်
      vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
    end,
  },
}
