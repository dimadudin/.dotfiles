-- See :Telescope for a list of all pickers
return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    { 'nvim-telescope/telescope-ui-select.nvim' },
    { 'nvim-tree/nvim-web-devicons', enabled = true },
  },
  config = function()
    require('telescope').setup {
      extensions = {
        ['ui-select'] = { require('telescope.themes').get_dropdown() },
      },
    }
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')
    local builtin = require 'telescope.builtin'
    vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find)
    vim.keymap.set('n', '<leader>s/', builtin.live_grep)
    vim.keymap.set('n', '<leader>sf', builtin.find_files)
    vim.keymap.set('n', '<leader>sh', builtin.help_tags)
  end,
}
