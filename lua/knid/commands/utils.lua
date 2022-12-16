-- Helper Functions -- 
function ToArray(...)
    local arr = {}
    for val in ... do
        arr[#arr + 1] = val
    end
    return arr
end

function GetCurrentFilePath()
    return vim.fn.expand('%')
end

function GetCurrentFileName()
    local splittedPath = ToArray(string.gmatch(GetCurrentFilePath(), '([^/]+)'))
    local currentFile = splittedPath[#splittedPath]
    return currentFile
end

function GetCurrentFileNameWithoutExtension()
    local splittedFileName = ToArray(string.gmatch(GetCurrentFileName(), '([^.]+)'))
    local fileName = splittedFileName[#splittedFileName - 1]
    return fileName
end

function GetCurrentFileExtension()
    local splittedFileName = ToArray(string.gmatch(GetCurrentFileName(), '([^.]+)'))
    local fileExtension = splittedFileName[#splittedFileName]
    return fileExtension
end

function FileExists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end


