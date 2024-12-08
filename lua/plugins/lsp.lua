return {
  'neovim/nvim-lspconfig',
  config = function()
    -- Import the lspconfig plugin
    local lspconfig = require('lspconfig')

    -- Define keymaps for LSP functionality
    local on_attach = function(client, bufnr)
      -- Helper function to set buffer-specific keymaps
      local opts = { noremap = true, silent = true, buffer = bufnr }
      local keymap = vim.keymap.set

      -- LSP Keymaps
      keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)            -- Go to definition
      keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)           -- Go to declaration
      keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)        -- Go to implementation
      keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)            -- Show references
      keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)                  -- Show hover documentation
      keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)     -- Show signature help
      keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)        -- Rename symbol
      keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)   -- Show code actions
      keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)          -- Go to previous diagnostic
      keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)          -- Go to next diagnostic
      keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)  -- Add diagnostics to location list
      keymap('n', '<leader>f', '<cmd>lua vim.lsp.buf.format({ async = true })<CR>', opts) -- Format buffer
    end

    -- Add additional language servers as needed
    lspconfig.clangd.setup {
      on_attach = on_attach
    }

    lspconfig.pylsp.setup {
      on_attach = on_attach
    }

  end,
}
