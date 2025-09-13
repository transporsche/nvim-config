vim.lsp.enable("matlab_ls")
vim.env.PATH = vim.env.PATH .. ":/opt/MATLAB/R2025a/"
--<ESC>7j-- lspconfig.matlab_ls.setup({})
--<ESC>7jvim.lsp.config.matlab_ls.setup({
--<ESC>7jsettings = {
--<ESC>7jMATLAB = {
--<ESC>7jinstallPath = "/opt/MATLAB/R2025a/",
--<ESC>7j},
--<ESC>7j},
--<ESC>7jsingle_file_support = true,
--<ESC>7j})
return {}
