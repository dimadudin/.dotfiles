return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'go',
        'python',
        'c_sharp',
        'bash',
        'c',
        'lua',
        'luadoc',
        'vim',
        'vimdoc',
      },
      sync_install = false,
      auto_install = false,
      indent = { enable = true },
      highlight = { enable = true },
    }
  end,
}
