return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
    { "<leader>\\", ":NvimTreeFindFileToggle<CR>", desc = "Toggle NERDTree" },
  },
  config = function()
    require("nvim-tree").setup({})
  end,
}
