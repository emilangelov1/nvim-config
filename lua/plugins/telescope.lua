return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      -- Optional: Add your telescope configuration here
      require('telescope').setup({
        -- your telescope config
      })
    end,
  },
  {
    'junegunn/fzf',
    build = './install --all',
  },
}
