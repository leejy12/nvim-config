return {
    'sbdchd/neoformat',
    config = function()
        vim.api.nvim_create_autocmd("BufWritePre", {
          pattern = "*",
          callback = function()
            vim.cmd("undojoin | Neoformat")
          end,
        })
    end
}
