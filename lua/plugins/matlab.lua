vim.lsp.config["matlab_ls"] = {
  -- Command and arguments to start the server.
  cmd = { "matlab-language-server" },
  -- Filetypes to automatically attach to.
  filetypes = { "matlab" },
  settings = {
    MATLAB = {
      installPath = "usr/local/MATLAB/R2025a",
      telemetry = false,
    },
  },
}
vim.lsp.enable("matlab_ls")
vim.env.PATH = vim.env.PATH .. ":/usr/local/MATLAB/R2025a/bin/"
return {}
