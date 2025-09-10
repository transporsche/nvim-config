return {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            -- lspconfig.matlab_ls.setup({})
            lspconfig.matlab_ls.setup({
                capabilities = capabilities,
                settings = {
                    MATLAB = {
                        installPath = "/opt/MATLAB/R2025a/",

                    }
                },
                single_file_support = true,
            })
}
vim.lsp.enable("matlab_ls")
vim.env.PATH = vim.env.PATH .. ":/opt/MATLAB/R2025a/"
