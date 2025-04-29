return {
  "rest-nvim/rest.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = { "http" }, -- Optional: Load only for .http files
  config = function()
    require("rest-nvim").setup({
      -- Add custom configuration here (optional)
    })
  end,
}
