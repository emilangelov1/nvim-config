return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.mapping = cmp.mapping.preset.insert({
        -- Navigate suggestions
        ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

        -- Scroll docs
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),

        -- Trigger completion
        ["<C-Space>"] = cmp.mapping.complete(),

        -- Close completion
        ["<C-e>"] = cmp.mapping.abort(),

        -- Accept suggestion - THIS IS THE KEY!
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Enter to accept
        ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Tab to accept

        -- Alternative: Tab cycles through suggestions
        -- ["<Tab>"] = cmp.mapping.select_next_item(),
        -- ["<S-Tab>"] = cmp.mapping.select_prev_item(),
      })

      return opts
    end,
  },
}
