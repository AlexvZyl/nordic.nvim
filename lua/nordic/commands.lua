local o = require 'nordic.config'.options
local api = vim.api

function _Win_leave_hl()
    vim.cmd([[setlocal cursorlineopt=number]])
end

function _Win_enter_hl()
    vim.cmd([[setlocal cursorlineopt=both]])
end

if o.cursorline.hide_unfocused then

    api.nvim_create_autocmd({'WinEnter'}, {
        callback = _Win_enter_hl
    })
    api.nvim_create_autocmd({'WinLeave'}, {
        callback = _Win_leave_hl
    })

end
