return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          -- markdownlint-cli2 lints via stdin and only discovers a config
          -- file by walking up from cwd; that walk doesn't reliably reach
          -- ~/.markdownlint-cli2.jsonc from a nested repo directory, so pass
          -- it explicitly. Disables MD013 (line-length) globally.
          args = { "--config", vim.fn.expand("~/.markdownlint-cli2.jsonc"), "-" },
        },
      },
    },
  },
}
