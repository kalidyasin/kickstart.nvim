return {
  'rest-nvim/rest.nvim',
  config = function()
    vim.g.rest_nvim = {}
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'http' },
      callback = function()
        vim.keymap.set('n', '<leader>rr', '<cmd>Rest run<CR>', { desc = 'Run rest command' })
        vim.keymap.set('n', '<leader>rl', '<cmd>Rest run last<CR>', { desc = 'Run last rest command' })
      end,
    })
  end,
}
