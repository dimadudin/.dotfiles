return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',
    'nvim-neotest/neotest-python',
    'fredrikaverpil/neotest-golang',
    'Issafalcon/neotest-dotnet',
  },
  config = function()
    local neotest = require 'neotest'
    ---@diagnostic disable-next-line: missing-fields
    neotest.setup {
      adapters = {
        require 'neotest-python',
        require 'neotest-golang',
        require 'neotest-dotnet',
      },
    }
    vim.keymap.set('n', '<leader>tc', neotest.run.run)
  end,
}
