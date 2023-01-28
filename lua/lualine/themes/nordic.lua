local c = require 'nordic.colors'

local nordic = {}

nordic.normal = {
    a = { bg = c.orange.bright, fg = c.black },
    b = { bg = c.gray1, fg = c.white0 },
    c = { bg = c.bg_statusline, fg = c.white0 },
}

nordic.insert = {
    a = { bg = c.green.bright, fg = c.black },
    b = { bg = c.gray1, fg = c.white0 },
    c = { bg = c.bg_statusline, fg = c.white0 },
}

nordic.command = {
    a = { bg = c.blue2, fg = c.black },
    b = { bg = c.gray1, fg = c.white0 },
    c = { bg = c.bg_statusline, fg = c.white0 },
}

nordic.visual = {
    a = { bg = c.red.bright, fg = c.black },
    b = { bg = c.gray1, fg = c.white0 },
    c = { bg = c.bg_statusline, fg = c.white0 },
}

nordic.replace = {
    a = { bg = c.magenta.bright, fg = c.black },
    b = { bg = c.gray1, fg = c.white0 },
    c = { bg = c.bg_statusline, fg = c.white0 },
}

nordic.terminal = {
    a = { bg = c.green.bright, fg = c.black },
    b = { bg = c.gray1, fg = c.white0 },
    c = { bg = c.bg_statusline, fg = c.white0 },
}

nordic.inactive = {
    a = { bg = c.gray2, fg = c.white0 },
    b = { bg = c.gray1, fg = c.white0 },
    c = { bg = c.bg_statusline, fg = c.white0 },
}

return nordic
