return {
  'slugbyte/lackluster.nvim',
  priority = 1000,
  lazy = false,
  init = function()
    vim.cmd.colorscheme 'lackluster-hack'
  end,
}
