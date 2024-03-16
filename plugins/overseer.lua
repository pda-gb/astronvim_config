-- сборка, запуск кода

return {
  'stevearc/overseer.nvim',
  opts = {
    -- templates = { "builtin", "user.overseer.template.kt_build(gradlew)" },
    
    log = {
      {
        type = "file",
        filename = "overseer.log",
        level = vim.log.levels.TRACE, 
      },
    },

    strategy = {
      "toggleterm",
      direction = "float",
      -- direction = "horizontal",
      quit_on_exit = "newer",
      auto_scroll = true,
    },
    
    -- отключаем lazy автоподключение к dap
    dap = false, 

  },
-- регистрация шаблонов задач
  config = function(_, opts)
    local overseer = require("overseer")
    overseer.setup(opts)
    overseer.register_template(require("user.overseer.template.kt_build(gradlew)"))
    overseer.register_template(require("user.overseer.template.kt_run(gradlew)"))
    overseer.register_template(require("user.overseer.template.py_run"))
    overseer.register_template(require("user.overseer.template.build_or_run_on_save"))
    -- ручное подключение к dap при его запуске (инстр. плагина )
    overseer.patch_dap(true)
  end,
  
  -- load_template = { "user.overseer.template.kt_build(gradlew)" },

  -- создание команды :OverseerWatchRun  и :OverseerWatchRunStop для автозапуска
  -- скрипта  при сохранении файла
  vim.api.nvim_create_user_command("OverseerWatchRun", function()
    local overseer = require("overseer")
    -- используем специальный скрипт для этого написанный
    overseer.run_template({ name = "Build or run on save" }, function(task)
      if task then
        task:add_component({ "restart_on_save", paths = {vim.fn.getcwd()} })
        local main_win = vim.api.nvim_get_current_win()
        -- open - по умолчанию, open hsplit - разделить по горизонтали
        overseer.run_action(task, "open")
        vim.api.nvim_set_current_win(main_win)
      else
        vim.notify("OverseerWatchRun not supported for filetype " .. vim.bo.filetype, vim.log.levels.ERROR)
      end
    end)
  end, {}),

  keys = {
    { "<leader>rr", "<cmd>:OverseerRun<cr>", desc="Run task..." },
    {"<leader>rt", "<cmd>:OverseerToggle<cr>", desc = "Open/Close overseer window"},
    {"<leader>r", name = "qwe", desc = "Build/Run tasks" },
    { "<leader>ri", "<cmd>:OverseerInfo<cr>", desc="Info" },
    { "<leader>ra", "<cmd>:OverseerQuickAction<cr>", desc="Quick Action" },
    -- { "<leader>", "<cmd><cr>", desc="" },
  },
  
  priority = 1000,
  -- зуапуск плагина при старте lsp сервера
  event = "LspAttach",
}
