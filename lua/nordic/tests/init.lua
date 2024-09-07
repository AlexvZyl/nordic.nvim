M = {}

function M.assert_eq(left, right, message)
    if not vim.deep_equal(left, right) then
        local info = debug.getinfo(2)
        local file_name = info.short_src
        local line_number = info.currentline
        print('Equal assertion failed at "' .. file_name .. ':' .. line_number .. '"')
        print('Message: ' .. message)
        print('Left:\n' .. vim.inspect(left))
        print('Right:\n' .. vim.inspect(right))
    end
end

function M.run_tests()
    -- Ensures config resets
    require('nordic').setup({})

    require('nordic.tests.utils')
    require('nordic.tests.options')
end

return M
