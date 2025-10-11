vim.lsp.config["tinymist"] = {
  cmd = { "tinymist" },
  filetypes = { "typst" },
  settings = {
    -- ...
  },
}

return {
  {
    "chomosuke/typst-preview.nvim",
    lazy = false, -- or ft = 'typst'
    version = "1.*",
    opts = {
      --open_cmd = "zathura %s -P typst-preview --class typst-preview",
    }, -- lazy.nvim will implicitly calls `setup {}`
  },
}
