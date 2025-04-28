-- lvim-plugins/nvim-osc52.lua
return {
  {
    "ojroques/nvim-osc52",
    event = "VeryLazy", -- or "BufReadPre" if you prefer
    config = function()
      local function inside_docker()
        return vim.fn.filereadable("/.dockerenv") == 1
      end

      if inside_docker() then
        local ok, osc52 = pcall(require, "osc52")
        if ok then
          osc52.setup {
            max_length = 0,
            silent = false,
            trim = false,
          }

          vim.api.nvim_create_autocmd("TextYankPost", {
            callback = function()
              if vim.v.event.operator == "y" and vim.v.event.regname == "" then
                require("osc52").copy_register('"')
              end
            end,
          })

          vim.api.nvim_echo({ { "🔗 OSC52 clipboard bridge loaded successfully (auto-sync yanks!)", "InfoMsg" } }, false,
            {})
        else
          vim.api.nvim_echo({ { "⚠️ Failed to load OSC52 clipboard bridge", "ErrorMsg" } }, false, {})
        end
      else
        vim.api.nvim_echo({ { "💻 Running on Host (not Docker)", "WarningMsg" } }, false, {})
      end
    end,
  },
}
