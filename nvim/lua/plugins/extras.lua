return {
  { import = "lazyvim.plugins.extras.lang.python" },
  -- NOTE: `lazyvim.plugins.extras.lang.sh` does not exist in current LazyVim
  -- (v16.0.0 / main as of 2026-07-22). Upstream folded bashls + shellcheck
  -- into `util.dot` ("Language support for dotfiles") back in PR #2879;
  -- there is no dedicated lang.sh module to import. Using the functional
  -- equivalent so shell LSP/lint support is actually enabled.
  { import = "lazyvim.plugins.extras.util.dot" },
  { import = "lazyvim.plugins.extras.lang.markdown" },
}
