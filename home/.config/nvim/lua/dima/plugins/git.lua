return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup {
        signs = {
          add = { text = '|' },
          change = { text = '|' },
          delete = { text = '|' },
          topdelete = { text = '|' },
          changedelete = { text = '|' },
        },
      }
    end,
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
    },
    config = function()
      local neogit = require 'neogit'
      neogit.setup {}
      vim.keymap.set('n', '<leader>gg', function()
        neogit.open { kind = 'replace' }
      end)
    end,
  },
}
