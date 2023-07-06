local C = require 'nordic.colors'

return {

    -- General.
    DashboardHeader = { fg = C.yellow.base, bold = true },
    DashboardFooter = { fg = C.cyan.base },
    DashboardCenter = { fg = C.green.base },
    DashboardShortCut = { fg = C.gray4, bold = true },

    -- Hyper.
    DashboardProjectTitle = { fg = C.orange.base, bold = true },
    DashboardProjectTitleIcon = { link = 'DashboardProjectTitle' },
    DashboardProjectIcon = { fg = C.magenta.bright },
    DashboardMruTitle = { link = 'DashboardProjectTitle' },
    DashboardMruIcon = {},
    DashboardFiles = { fg = C.fg },

    -- Doom.
    DashboardDesc = { fg = C.green.base },
    DashboardKey = { fg = C.red.base, bold = true },
    DashboardIcon = { fg = C.green.base },
}
