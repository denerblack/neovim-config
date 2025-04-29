vim.filetype.add({
  extension = {
    ["coffee.erb"] = "coffee.erb", -- Treat .coffee.erb as a unique filetype
  },
  pattern = {
    [".*%.coffee%.erb"] = "coffee.erb", -- Fallback pattern
  },
})
