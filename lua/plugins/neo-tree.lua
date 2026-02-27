return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    window = {
      mappings = {
        ["y"] = {
          function(state)
            local node = state.tree:get_node()
            if not node then return end

            local path = node:get_id()
            local relative = vim.fn.fnamemodify(path, ":.")
            vim.fn.setreg("+", relative)

            print("Copied: " .. relative)
          end,
          desc = "Copy Relative Path",
        },
      },
    },
  },
}
