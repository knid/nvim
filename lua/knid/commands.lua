local has = vim.fn.has
-- Helper Functions -- 
local function toArray(...)
    local arr = {}
    for val in ... do
        arr[#arr + 1] = val
    end
    return arr
end

local function getCurrentFilePath()
    return vim.fn.expand('%')
end

local function getCurrentFileName()
    local splittedPath = toArray(string.gmatch(getCurrentFilePath(), '([^/]+)'))
    local currentFile = splittedPath[#splittedPath]
    return currentFile
end

local function getCurrentFileNameWithoutExtension()
    local splittedFileName = toArray(string.gmatch(getCurrentFileName(), '([^.]+)'))
    local fileName = splittedFileName[#splittedFileName - 1]
    return fileName
end

local function getCurrentFileExtension()
    local splittedFileName = toArray(string.gmatch(getCurrentFileName(), '([^.]+)'))
    local fileExtension = splittedFileName[#splittedFileName]
    return fileExtension
end

local function fileExists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

local function runPython(defaultVersion)
    if version then
        vim.cmd("! python" .. defaultVersion .. " " .. getCurrentFilePath())
    else
        if has "python" then
            vim.cmd("! python " .. getCurrentFilePath())
        elseif has "python3" then
            vim.cmd("! python3 " .. getCurrentFilePath())
        end
    end
end

local function runRust()
    local checkCargoToml = fileExists("Cargo.toml")
    if checkCargoToml then
        vim.cmd('!cargo run')
    else
        vim.cmd('! rustc ' .. getCurrentFilePath() .. " && " .. "./" .. getCurrentFileNameWithoutExtension())
    end
end

local function runC()
    vim.cmd("! gcc " .. getCurrentFilePath() .. " -o " .. getCurrentFileNameWithoutExtension() .. " && " .. "./" .. getCurrentFileNameWithoutExtension())
end
-- Commands --

-- Run
function Run()
    if not getCurrentFileName() then
        do return end
    end
    local currentFileExtension = getCurrentFileExtension()
    vim.cmd('write')
    if currentFileExtension == "py" then
        runPython()
    elseif currentFileExtension == "rs" then
        runRust()
    elseif currentFileExtension == "c" then
        runC()
    end
end
