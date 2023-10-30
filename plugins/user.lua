return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  -- доп. тема 
  -- {""},
  { "catppuccin/nvim", name = "catppuccin", 
    priority = 1000,
    -- init = function()
    --   vim.g.catppuccin = "catppuccin"
    -- end,
  },
  { "shaunsingh/nord.nvim", name = "nord"},
  {"NLKNguyen/papercolor-theme", name = "papercolor"},
  {"morhetz/gruvbox", name = "gruvbox"},
  {"romainl/Apprentice", name = "apprentice"},
  {
    "xiantang/darcula-dark.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
 },
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  -- { "sainnhe/everforest", name = "everforest", priority = 1000 },
    -- Даже если включена русская раскладка, то nvim-команды будут работать
  { "aveplen/ruscmd.nvim", priority = 1000 },
  -- виртуальные подписи к переменным в коде при дебаге
  {"theHamsta/nvim-dap-virtual-text", priority = 1000},
}
