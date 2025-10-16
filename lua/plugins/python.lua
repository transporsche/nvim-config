vim.lsp.config("ruff", {
  init_options = {
    settings = {
      -- Ruff language server settings go here
    },
  },
})

require("conform").setup({
  formatters_by_ft = {
    python = {
      -- To fix auto-fixable lint errors.
      "ruff_fix",
      -- To run the Ruff formatter.
      "ruff_format",
      -- To organize the imports.
      "ruff_organize_imports",
    },
  },
})

require("lint").linters_by_ft = {
  python = { "ruff" },
}

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp_attach_disable_ruff_hover", { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client == nil then
      return
    end
    if client.name == "ruff" then
      -- Disable hover in favor of Pyright
      client.server_capabilities.hoverProvider = false
    end
  end,
  desc = "LSP: Disable hover capability from Ruff",
})

vim.lsp.enable("ruff")

return {
  -- Manim oder so
}
