return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        -- Disable markdownlint entirely (was: line-length, bare-URL, and
        -- other style nags on every markdown file). Formatting/LSP for
        -- markdown (marksman, render-markdown) are unaffected; conform's
        -- markdownlint-cli2 formatter also becomes a no-op since its
        -- condition checks for markdownlint diagnostics that no longer exist.
        markdown = {},
      },
    },
  },
}
