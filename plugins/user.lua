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
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  -- { "sainnhe/everforest", name = "everforest", priority = 1000 },
    -- Даже если включена русская раскладка, то nvim-команды будут работать
  { "aveplen/ruscmd.nvim", priority = 1000 },
}
