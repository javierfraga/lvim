-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"
vim.o.path = vim.o.path .. '**/' -- Make 'gf' work for .lua files in .config/nvim
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

vim.opt.wrap = true -- display lines as one long line

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Neovim configuration
reload("nvim-configs.options")
reload("nvim-configs.keymaps")
reload("nvim-configs.whitespace")
reload("nvim-configs.cursor-position")
reload("nvim-configs.search-jumps")
reload("nvim-configs.buffer-reload")
reload("nvim-configs.diff-unsaved")
reload("nvim-configs.file-dir-path")
reload("nvim-configs.quickfix-nav")
reload("nvim-configs.cheatsheets")

-- LVIM configurations
reload("lvim-configs.keymaps")

-- Additional Plugins
local plugins = {}
table.insert(plugins, unpack(require("lvim-plugins.trouble")))
table.insert(plugins, unpack(require("lvim-plugins.vim-easy-align")))
table.insert(plugins, unpack(require("lvim-plugins.vim-surround")))
table.insert(plugins, unpack(require("lvim-plugins.vim-tmux-navigator")))
lvim.plugins = plugins
