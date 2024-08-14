return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'sindrets/diffview.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require('neogit').setup()
    vim.keymap.set('n', '<leader>gg', '<cmd>Neogit<CR>')
    vim.keymap.set('n', '<leader>gc', '<cmd>Neogit commit<CR>')
    vim.keymap.set('n', '<leader>gp', '<cmd>Neogit pull<CR>')
    vim.keymap.set('n', '<leader>gP', '<cmd>Neogit push<CR>')
    vim.keymap.set('n', '<leader>gb', '<cmd>Neogit branch<CR>')
  end,
}
