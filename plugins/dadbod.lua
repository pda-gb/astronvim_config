return {
  'kristijanhusak/vim-dadbod-ui',
   lazy = true,
  dependencies = {
    { 'tpope/vim-dadbod', lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_use_nvim_notify = 1
  -- сохранение завпросов в в папке sql
    vim.g.db_ui_save_location = vim.fn.getcwd() .. "/sql/"

    vim.keymap.set('n', '<leader>De', '<Plug>(DBUI_ExecuteQuery)')
  end,
  
  keys = {
    { "<leader>D", desc="DB viewer" },
    { "<leader>Dt", "<cmd>:DBUIToggle<cr>", desc="Toggle viewer" },
      { "<leader>Df", ":DBUIFindBuffer<cr>", desc="Find buffer" },
    -- { "<leader>Dh", "<cmd>:DBUI_ToggleDetails<cr>", desc="Toggle Details" },
    -- { "<leader>D", "<cmd><cr>", desc="" },
    -- { "<leader>D", "<cmd><cr>", desc="" },
    -- { "<leader>D", "<cmd><cr>", desc="" },
  },

}
