-- lsp config für ltex-ls-plus
vim.lsp.config("ltex_plus", {
  -- Command and arguments to start the server.
  cmd = { "ltex-ls-plus" },
  -- Filetypes to automatically attach to.
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "tex" },
  settings = {
    ltex = {
      checkFrequency = "edit",
      completionEnabled = true,
      enabled = { "bibtex", "latex", "mail" },
      language = "de-DE",
      --      dictionary =  "de-DE": [":~/latex/worterbuchdeutsch.txt"],
      --      additionalLanguages = "en-US",
    },
  },
})

-- LSP einschalten
vim.lsp.enable("ltex_plus")
-- TexLive Path für nvim startklar  machen
vim.env.PATH = vim.env.PATH .. ":/usr/local/texlive/2025/bin/x86_64-linux"
return {
  "lervag/vimtex",
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = "zathura"
    vim.g.vimtex_quickfix_ignore_filters = { "Underfull", "Overfull" }
    vim.api.nvim_create_autocmd({ "FileType" }, {
      pattern = "tex",
      callback = function()
        vim.bo.filetype = "latex"
      end,
    })
  end,

  "saghen/blink.cmp",
  dependencies = {
    "rafamadriz/friendly-snippets", -- Lädt friendly-snippets für andere Sprachen
  },
  opts = {
    snippets = {
      -- Dein lokaler Ordner ist default, aber du kannst paths explizit setzen
      paths = { vim.fn.stdpath("config") .. "/snippets" },
    },
    -- Optional: Friendly-Snippets laden, aber LaTeX überspringen (da du deine eigene hast)
    keymap = { preset = "default" }, -- Standard-Keymaps für Tab-Expansion
    debug = true,
  },
}
