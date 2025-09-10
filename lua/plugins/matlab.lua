vim.lsp.enable("matlab_ls")
vim.env.PATH = vim.env.PATH .. ":/opt/MATLAB/R2025a/"
return {
  -- lspconfig.matlab_ls.setup({})
  vim.lsp.config.matlab_ls.setup({
    settings = {
      MATLAB = {
        installPath = "/opt/MATLAB/R2025a/",
      },
    },
    single_file_support = true,
  }),
}
