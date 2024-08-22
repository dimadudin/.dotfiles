return {
  'slugbyte/lackluster.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  priority = 1000,
  lazy = false,
  init = function()
    local lackluster = require 'lackluster'
    require('nvim-web-devicons').setup {
      color_icons = false,
      override = {
        ['default_icon'] = { color = lackluster.color.gray4, name = 'Default' },
      },
    }
    vim.cmd.colorscheme 'lackluster-hack'
  end,
}
