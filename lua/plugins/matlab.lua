vim.lsp.config["matlab_ls"] = {
  -- Command and arguments to start the server.
  cmd = { "matlab-language-server" },
  -- Filetypes to automatically attach to.
  filetypes = { "matlab" },
  settings = {
    MATLAB = {
      installPath = "/opt/MATLAB/R2025a/bin/",
      telemetry = false,
    },
  },
}
vim.lsp.enable("matlab_ls")
vim.env.PATH = vim.env.PATH .. ":/opt/MATLAB/R2025a/bin/"
return {}
