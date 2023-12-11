# Should both be installed?


return {
  'jalvesaq/nvim-r',
  ft = { 'r', 'rmd' },
  setup = function() 
    require("lspconfig").r_language_server.setup({})
  end,
  config = function()

  end,
}
