local U = require('nordic.utils')

M = {}

local function pretty_string(value)
    if not U.is_table(value) then return tostring(value) end
    local output = '{'
    for k, v in pairs(value) do
        output = output .. '' .. tostring(k) .. ': ' .. pretty_string(v) .. ', '
    end
    if #output == 1 then
        return output .. '}'
    else
        return output:sub(1, -3) .. '}'
    end
end

function M.assert_eq(left, right, message, stack_level)
    stack_level = stack_level or 1

    local function recursive_eq(value1, value2)
        if not U.is_table(value1) or not U.is_table(value2) then
            return value1 == value2
        end

        -- I think this can be done faster but its just for tests...
        for k, v in pairs(value1) do
            if not recursive_eq(v, value2[k]) then return false end
        end
        for k, v in pairs(value2) do
            if not recursive_eq(v, value1[k]) then return false end
        end
        return true
    end

    if not recursive_eq(left, right) then
        local info = debug.getinfo(stack_level + 1)
        local file_name = info.short_src
        local line_number = info.currentline
        print('\nassertion `left == right` failed' ..
            ((message and ': ' .. message) or '') ..
            '\n  left: ' ..
            pretty_string(left) ..
            '\n right: ' .. pretty_string(right) .. '\nat ' .. tostring(file_name) .. ':' .. tostring(line_number))
    end
end

function M.run_tests()
    -- reset config (not needed for ci but I don't like commenting out my config every time)
    require('nordic').setup({})

    require('nordic.tests.utils')
    require('nordic.tests.options')
end

return M
