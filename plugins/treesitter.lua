return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      -- выбор языков для подсветки (ensure_installed - принудительная установка
      -- даже если отсутсвует при каждом запуске)
      "lua",
      "python",
      "bash",
      "html",
      "css",
      "dockerfile",
      "gitignore",
      "javascript",
      "json",
      "regex",
      "sql",
      "toml",
      "yaml"


    })
  end,
}
