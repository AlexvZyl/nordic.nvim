M = {}

function M.run_tests()
    require('nordic.tests.options')
    require('nordic.tests.utils')
end

function M.assert_eq(left, right, message)
    if left ~= right then
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

return M
