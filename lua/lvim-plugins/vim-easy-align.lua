-- lvim-plugins/easy-align.lua
return {
  {
    "junegunn/vim-easy-align",
    event = "BufReadPre",
    config = function()
      vim.keymap.set('x', 'ga', '<Plug>(EasyAlign)', {})
      vim.keymap.set('n', 'ga', '<Plug>(EasyAlign)', {})
    end
  },
}
