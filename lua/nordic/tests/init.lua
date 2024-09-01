local U = require('nordic.utils')

M = {}


function M.assert_eq(left, right, message)
    if not vim.deep_equal(left, right) then
        local info = debug.getinfo(2)
        local file_name = info.short_src
        local line_number = info.currentline
        print('\nassertion `left == right` failed' ..
            ((message and ': ' .. message) or '') ..
            '\n  left: ' ..
            vim.inspect(left) ..
            '\n right: ' .. vim.inspect(right) .. '\nat ' .. tostring(file_name) .. ':' .. tostring(line_number))
    end
end

function M.run_tests()
    -- reset config (not needed for ci but I don't like commenting out my config every time)
    require('nordic').setup({})

    require('nordic.tests.utils')
    require('nordic.tests.options')
end

return M
