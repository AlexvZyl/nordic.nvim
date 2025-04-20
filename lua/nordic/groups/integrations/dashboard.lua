local M = {}

function M.get()
    local C = require('nordic.colors')

    local G = {}

    G.DashboardHeader = { fg = C.yellow.base, bold = true }
    G.DashboardFooter = { fg = C.cyan.base }
    G.DashboardCenter = { fg = C.green.base }
    G.DashboardShortCut = { fg = C.gray4, bold = true }
    G.DashboardProjectTitle = { fg = C.orange.base, bold = true }
    G.DashboardProjectTitleIcon = { link = 'DashboardProjectTitle' }
    G.DashboardProjectIcon = { fg = C.magenta.bright }
    G.DashboardMruTitle = { link = 'DashboardProjectTitle' }
    G.DashboardMruIcon = {}
    G.DashboardFiles = { fg = C.fg }
    G.DashboardDesc = { fg = C.green.base }
    G.DashboardKey = { fg = C.red.base, bold = true }
    G.DashboardIcon = { fg = C.green.base }

    return G
end

return M
