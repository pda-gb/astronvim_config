 -- task started when file save (.sh .kt)
return {
  name = "Build or run on save",

  builder = function()
    local file = vim.fn.expand("%:p")
    local cmd = { file }
    local root_project_path = vim.fn.getcwd()

    if vim.bo.filetype == "kotlin" then
      cmd = { 
         -- root_project_path .. "/gradlew", "build",
         -- "&&",
         root_project_path .. "/gradlew", "run"
       }
    end

    if vim.bo.filetype == "python" then
      -- TODO: добавить проверку лок./глоб. доступа питона
      cmd = { "python3", file }
    end
    return {
      cmd = cmd,
      components = {
         -- ???
        -- { "on_output_quickfix", set_diagnostics = true },
        "on_result_diagnostics",
        "default",
      },
    }
  end,
  condition = {
    filetype = { "sh", "kotlin", "python" },
  },
}
