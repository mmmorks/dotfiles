return {
  { import = "lazyvim.plugins.extras.lang.python" },
  -- NOTE: `lazyvim.plugins.extras.lang.sh` does not exist in current LazyVim
  -- (v16.0.0 / main as of 2026-07-22). Upstream folded it into `util.dot`
  -- (Language support for dotfiles, PR #2879). Beyond bash/shell support,
  -- util.dot unconditionally adds git_config treesitter parser and (since
  -- ~/.config/fish exists) actively enables fish filetype/treesitter support;
  -- hyprlang and rasi remain inert (no rofi/hyprland configs present).
  { import = "lazyvim.plugins.extras.util.dot" },
  { import = "lazyvim.plugins.extras.lang.markdown" },
}
