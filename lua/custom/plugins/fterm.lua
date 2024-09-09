-- nvim v0.8.0
return {
  'numToStr/FTerm.nvim',
  keys = {
    { '<A-i>', '<cmd>lua require("FTerm").toggle()<cr>', mode = 'n', desc = 'Toggle FTerm' },
    { '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<cr>', mode = 't', desc = 'Toggle FTerm' },
  },
}
