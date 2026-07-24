return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      -- LazyVim's lang.markdown extra disables heading icons and checkboxes by
      -- default; re-enable so headings/checkboxes render inline, not just bullets.
      heading = {
        icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
      },
      checkbox = {
        enabled = true,
      },
    },
  },
}
