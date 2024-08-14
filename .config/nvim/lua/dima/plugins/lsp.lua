-- See :Lsp*
return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'Bilal2453/luvit-meta', lazy = true },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      'hrsh7th/cmp-nvim-lsp',
      { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('DimaLspAttach', { clear = true }),
        callback = function()
          local builtin = require 'telescope.builtin'
          vim.opt_local.omnifunc = 'v:lua.vim.lsp.omnifunc'
          -- lsp
          vim.keymap.set('n', 'gd', builtin.lsp_definitions, { buffer = 0 })
          vim.keymap.set('n', 'gr', builtin.lsp_references, { buffer = 0 })
          vim.keymap.set('n', 'gI', builtin.lsp_implementations, { buffer = 0 })
          -- code
          vim.keymap.set('n', '<leader>cs', builtin.lsp_workspace_symbols, { buffer = 0 })
          vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { buffer = 0 })
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = 0 })
          -- help
          vim.keymap.set('n', '<leader>h', vim.lsp.buf.hover, { buffer = 0 })
          vim.keymap.set('n', '<leader>H', vim.lsp.buf.signature_help, { buffer = 0 })
          -- diagnostic
          vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { buffer = 0 })
          vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { buffer = 0 })
          vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { buffer = 0 })
        end,
      })
      local servers = {
        bashls = {},
        gopls = {},
        pyright = {},
        lua_ls = {
          settings = {
            Lua = {
              completion = {
                callSnippet = 'Replace',
              },
            },
          },
        },
      }
      local tools = {
        'stylua',
        'black',
        'delve',
        'debugpy',
      }
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      local cmp_capabilities = require('cmp_nvim_lsp').default_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, cmp_capabilities)
      require('mason').setup()
      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, tools)
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }
      require('mason-lspconfig').setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },
}
