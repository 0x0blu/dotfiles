return {
  'williamboman/mason.nvim',
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    local mason = require 'mason'

    local mason_lspconfig = require 'mason-lspconfig'

    mason.setup()

    mason_lspconfig.setup {
      ensure_installed = {
        'tsserver',
        'eslint',
        'lua_ls',
        'rust_analyzer',
        'gopls',
        'pyright',
        'zls',
        'html',
        'emmet_ls',
        'cssls',
        'tailwindcss',
      },
    }

    local mason_tool_installer = require 'mason-tool-installer'

    mason_tool_installer.setup {
      ensure_installed = {
        'prettier',
        'stylua',
        'isort',
        'black',
        'goimports',
      },
    }
  end,
}
