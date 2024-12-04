return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require('telescope')

    -- Setup Telescope with defaults
    telescope.setup {
      defaults = {
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case'
        },
        prompt_prefix = "> ",
        selection_caret = "> ",
        path_display = { "truncate" },
      }
    }

    -- Optional: Create keybindings for live grep
    vim.keymap.set('n', '<leader>lg', require('telescope.builtin').live_grep, { desc = "Live Grep (Search Text)" })
  end
}
