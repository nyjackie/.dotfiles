local Util = require("lazyvim.util")

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    -- enabled = false,
    opts = {
      window = {
        mappings = {
          ["y"] = function(state)
            -- NeoTree is based on [NuiTree](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree)
            -- The node is based on [NuiNode](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree#nuitreenode)
            local node = state.tree:get_node()
            local filename = node.name
            vim.fn.setreg("*", filename)
            vim.notify("Copied: " .. filename)
          end,
          ["Y"] = function(state)
            -- NeoTree is based on [NuiTree](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree)
            -- The node is based on [NuiNode](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree#nuitreenode)
            local node = state.tree:get_node()
            local filepath = node:get_id()
            local relativepath = vim.fn.fnamemodify(filepath, ":.")
            vim.fn.setreg("*", relativepath)
            vim.notify("Copied: " .. relativepath)
          end,
          ["gy"] = function(state)
            -- NeoTree is based on [NuiTree](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree)
            -- The node is based on [NuiNode](https://github.com/MunifTanjim/nui.nvim/tree/main/lua/nui/tree#nuitreenode)
            local node = state.tree:get_node()
            local filepath = node:get_id()
            vim.fn.setreg("*", filepath)
            vim.notify("Copied: " .. filepath)
          end,
        },
      },
    },
  },
}
