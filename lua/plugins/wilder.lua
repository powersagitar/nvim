return {
  "gelguy/wilder.nvim",

  opts = {
    modes = { ":", "/", "?" },
  },

  config = function(_, opts)
    local wilder = require("wilder")

    wilder.setup(opts)

    wilder.set_option("pipeline", {
      wilder.branch(wilder.cmdline_pipeline({
        language = "vim",
        fuzzy = 2,
      })),
    })

    wilder.set_option(
      "renderer",
      wilder.wildmenu_renderer({
        highlighter = wilder.basic_highlighter(),
        separator = " · ",
        left = { " ", wilder.wildmenu_spinner(), " " },
        right = { " ", wilder.wildmenu_index() },
      })
    )
  end,
}
