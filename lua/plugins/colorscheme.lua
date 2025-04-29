return {
  -- Add the jellybeans colorscheme plugin
  {
    "nanotech/jellybeans.vim",
    lazy = false, -- Load immediately
    priority = 1000, -- Ensure it loads first
    config = function()
      vim.cmd("colorscheme jellybeans")
    end,
  },
}
