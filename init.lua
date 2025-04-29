-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- Set up keybindings for rest.nvim
vim.api.nvim_create_autocmd("FileType", {
  pattern = "http",
  callback = function()
    vim.keymap.set("n", "<leader>r", "<Plug>RestNvim", { buffer = true, desc = "Run HTTP request" })
    vim.keymap.set("n", "<leader>l", "<Plug>RestNvimLast", { buffer = true, desc = "Run last HTTP request" })
    vim.keymap.set("n", "<leader>s", "<Plug>RestNvimPreview", { buffer = true, desc = "Preview HTTP request" })
    -- Format JSON response with jq
    vim.keymap.set("n", "<leader>j", ":%!jq .<CR>", { buffer = true, desc = "Format JSON response" })
  end,
})

-- Auto-format JSON responses
vim.api.nvim_create_autocmd("User", {
  pattern = "RestNvimRequestFinished",
  callback = function()
    if vim.bo.filetype == "http" then
      vim.cmd("%!jq .")
    end
  end,
})
