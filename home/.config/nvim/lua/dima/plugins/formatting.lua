return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        go = { 'goimports', 'gofumpt' },
        python = { 'black' },
        cs = { 'csharpier' },
        lua = { 'stylua' },
        html = { 'prettier' },
      },
      format_on_save = {
        lsp_format = 'fallback',
        timeout_ms = 500,
      },
    }
  end,
}
