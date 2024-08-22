return {
  'folke/zen-mode.nvim',
  config = function()
    require('zen-mode').setup {
      window = {
        backdrop = 0.85,
        width = 100,
        height = 1,
      },
      plugins = {
        options = {
          laststatus = 0,
        },
        tmux = { enabled = true },
        todo = { enabled = true },
      },
    }
    vim.keymap.set('n', '<leader>f', vim.cmd.ZenMode)
  end,
}
