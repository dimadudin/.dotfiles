return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-neotest/nvim-nio',
    'williamboman/mason.nvim',
    'leoluz/nvim-dap-go',
    'mfussenegger/nvim-dap-python',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'
    dapui.setup()
    require('nvim-dap-virtual-text').setup {}
    require('dap-go').setup()
    require('dap-python').setup()

    dap.listeners.after.event_initialized['dapui_config'] = dapui.open
    dap.listeners.before.event_terminated['dapui_config'] = dapui.close
    dap.listeners.before.event_exited['dapui_config'] = dapui.close

    vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
    vim.keymap.set('n', '<leader>e', function()
      require('dapui').eval(nil, { enter = true })
    end)
    vim.keymap.set('n', '<leader>dc', dap.continue)
    vim.keymap.set('n', '<leader>dr', dap.restart)
    vim.keymap.set('n', '<leader>dt', dap.terminate)
    vim.keymap.set('n', '<leader>di', dap.step_into)
    vim.keymap.set('n', '<leader>do', dap.step_out)
    vim.keymap.set('n', '<leader>dO', dap.step_over)
    vim.keymap.set('n', '<leader>db', dap.step_back)
  end,
}
