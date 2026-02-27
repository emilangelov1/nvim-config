return {
  {
    "f-person/git-blame.nvim",
    event = "VeryLazy",
    opts = {
      enable = true,
      message_template = " <author> • <summary> • <date>",
      date_format = "%Y-%m-%d %H:%M",
      virtual_text_column = 1,
    },
    keys = {
      {
        "<leader>gb",
        function()
          require("gitblame").toggle()
        end,
        desc = "Toggle Git Blame",
      },
    },
  },
  {
    "sindrets/diffview.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>gd",
        "<cmd>DiffviewOpen<cr>",
        desc = "DiffView Open",
      },
      {
        "<leader>gdc",
        "<cmd>DiffviewClose<cr>",
        desc = "DiffView Close",
      },
      {
        "<leader>gdh",
        "<cmd>DiffviewFileHistory<cr>",
        desc = "DiffView File History",
      },
    },
  },
}
