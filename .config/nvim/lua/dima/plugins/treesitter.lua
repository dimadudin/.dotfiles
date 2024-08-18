-- See :TS*
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'python',
        'c',
        'c_sharp',
        'go',
        'lua',
        'luadoc',
        'vim',
        'vimdoc',
      },
      sync_install = false,
      auto_install = true,
      indent = { enable = true },
      highlight = { enable = true },
    }
  end,
}
