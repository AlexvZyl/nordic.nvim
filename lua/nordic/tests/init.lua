M = {}

function M.run_tests()
    -- Ensures config resets
    require('nordic').setup({})

    require('nordic.tests.utils')
    require('nordic.tests.options')
end

return M
