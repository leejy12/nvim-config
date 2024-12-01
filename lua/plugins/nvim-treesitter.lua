return {
  'nvim-treesitter/nvim-treesitter',
  config = function()
    require('nvim-treesitter.configs').setup {
      highlight = {
        enable = true, -- Enable Tree-sitter-based syntax highlighting
        additional_vim_regex_highlighting = false, -- Disable Vim's regex highlighting (optional)
      },
      ensure_installed = {}, -- Automatically install parsers for specific languages
    }
  end,
}

