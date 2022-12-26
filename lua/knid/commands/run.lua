require('knid.commands.utils')

local has = vim.fn.has
local cmd = vim.cmd

local function runPython(defaultVersion)
  if defaultVersion then
    cmd("! python" .. defaultVersion .. " " .. GetCurrentFilePath())
  else
    if has "python" then
      cmd("! python " .. GetCurrentFilePath())
    elseif has "python3" then
      cmd("! python3 " .. GetCurrentFilePath())
    end
  end
end

local function runRust()
  local checkCargoToml = FileExists("Cargo.toml")
  if checkCargoToml then
    cmd('!cargo run')
  else
    cmd('! rustc ' .. GetCurrentFilePath() .. " && " .. "./" .. GetCurrentFileNameWithoutExtension())
  end
end

local function runC()
  cmd("! gcc " ..
    GetCurrentFilePath() ..
    " -o " .. GetCurrentFileNameWithoutExtension() .. " && " .. "./" .. GetCurrentFileNameWithoutExtension())
end

local function runCpp()
  cmd("! g++ " ..
    GetCurrentFilePath() ..
    " -o " .. GetCurrentFileNameWithoutExtension() .. " && " .. "./" .. GetCurrentFileNameWithoutExtension())
end

local function runJs()
  cmd("! node " .. GetCurrentFilePath())
end

-- Commands --

-- Run
function Run()
  if not GetCurrentFileName() then
    do return end
  end
  local currentFileExtension = GetCurrentFileExtension()
  cmd('write')
  if currentFileExtension == "py" then
    runPython(3)
  elseif currentFileExtension == "rs" then
    runRust()
  elseif currentFileExtension == "c" then
    runC()
  elseif currentFileExtension == "cpp" then
    runCpp()
  elseif currentFileExtension == "js" then
    runJs()
  end
end
