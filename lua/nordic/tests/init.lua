M = {}

function M.assert_eq(left, right, message)
    local function recursive_eq(value1, value2)
        if type(value1) ~= "table" or type(value2) ~= "table" then
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
        local info = debug.getinfo(2)
        local file_name = info.short_src
        local line_number = info.currentline
        print('\nassertion `left == right` failed' ..
            ((message and ': ' .. message) or '') ..
            '\n  left: ' ..
            tostring(left) ..
            '\n right: ' .. tostring(right) .. '\nat ' .. tostring(file_name) .. ':' .. tostring(line_number))
    end
end

function M.run_tests()
    require('nordic.tests.options')
    require('nordic.tests.utils')

end

return M
