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
  { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },
  -- виртуальные подписи к переменным в коде при дебаге
  {"theHamsta/nvim-dap-virtual-text", priority = 1000},
  -- TODO комментарии
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    event = "VeryLazy",
    priority = 1000,
  },
}
