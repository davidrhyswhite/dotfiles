require('rose-pine').setup({
  --- @usage 'auto'|'main'|'moon'|'dawn'
  variant = 'auto',
  --- @usage 'main'|'moon'|'dawn'
  dark_variant = 'moon',
  bold_vert_split = false,
  dim_nc_background = false,
  disable_background = true,
  disable_float_background = false,
  disable_italics = true
})

-- Set colorscheme after options
vim.cmd('colorscheme rose-pine')

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })