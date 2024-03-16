return {
  name = "Kotlin build (gradlew)",
  builder = function()
  -- local file = vim.fn.expand("%:p")
  local root_project_path = vim.fn.getcwd()
  return {
      cmd = { root_project_path .. "/gradlew", "build" },
      -- args = { file },
      components = { "default" },
    }
  end,
  condition = {
    filetipe = { "kotlin" },
  },
}

