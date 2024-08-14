-- [[ Set general options ]]
require 'dima.opt'

-- [[ Set general keymaps ]]
require 'dima.keymap'

-- [[ Set general autocommands ]]
require 'dima.autocmd'

-- [[ Install `lazy.nvim` plugin manager ]]
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Add `lazy.nvim` plugins ]]
require('lazy').setup({
  'tpope/vim-sleuth',
  import = 'dima.plugins',
}, {
  change_detection = { notify = false },
})
