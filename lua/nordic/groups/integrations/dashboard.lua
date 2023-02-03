local c = require 'nordic.colors'

return {

    -- General.

    DashboardHeader = {
        fg = c.yellow.base,
        bold = true,
    },

    DashboardFooter = {
        fg = c.cyan.base,
        bold = true,
    },

    DashboardCenter = {
        fg = c.green.base,
    },

    DashboardShortCut = {
        fg = c.gray4,
        bold = true,
    },

    -- Hyper.

    DashboardProjectTitle = {
        fg = c.orange.base,
        bold = true,
    },

    DashboardProjectTitleIcon = {
        link = 'DashboardProjectTitle',
    },

    DashboardProjectIcon = {
        fg = c.magenta.bright,
    },

    DashboardMruTitle = {
        link = 'DashboardProjectTitle',
    },

    DashboardMruIcon = {},

    DashboardFiles = {
        fg = c.fg,
    },

    -- Doom.

    DashboardDesc = {
        fg = c.green.base,
    },

    DashboardKey = {
        fg = c.red.base,
        bold = true,
    },

    DashboardIcon = {},
}
