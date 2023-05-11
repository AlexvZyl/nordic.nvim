local c = require 'nordic.colors'
local blend = require 'nordic.utils'.blend

local barbar_bg = blend(c.gray0, c.black, 0.4)

return {

    -- Normals.
    BufferCurrent = { fg = c.white0, bg = c.bg },
    BufferVisible = { fg = c.white0, bg = barbar_bg, underline = true, sp = c.bg_dark },
    BufferInactive = { fg = c.gray4, bg = barbar_bg, underline = true, sp = c.bg_dark },

    -- Signs.
    BufferCurrentSign = { fg = c.orange.bright, bg = c.bg },
    BufferCurrentSignRight = { fg = c.black, bg = c.bg },
    BufferVisibleSign = { fg = c.black, bg = barbar_bg, underline = true, sp = c.bg_dark },
    BufferVisibleSignRight = { fg = c.black, bg = barbar_bg, underline = true, sp = c.bg_dark },
    BufferInactiveSign = { bg = barbar_bg, fg = c.black, underline = true, sp = c.bg_dark },
    BufferInactiveSignRight = { bg = barbar_bg, fg = c.black, underline = true, sp = c.bg_dark },

    -- Mods.
    BufferCurrentMod = { fg = c.white0, bg = c.gray0 },
    BufferVisibleMod = { fg = c.white0, bg = c.black },

    -- Diagnostics.
    BufferVisibleError = { fg = c.red.bright, bg = barbar_bg },

    -- Targets.
    BufferCurrentTarget = { fg = c.red.bright, bold = true },
    BufferVisibleTarget = { fg = c.red.bright, bold = true },
    BufferInactiveTarget = { bg = barbar_bg, fg = c.red.bright, bold = true },
    BufferAlternateTarget = { fg = c.red.bright, bg = barbar_bg, bold = true }

    -- BufferCurrentIndex = { bg = C.surface1, fg = C.blue },
    -- BufferCurrentTarget = { bg = C.surface1, fg = C.red },
    -- BufferVisibleIndex = { bg = C.mantle, fg = C.blue },
    -- BufferVisibleTarget = { bg = C.mantle, fg = C.red },
    -- BufferInactive = { bg = C.mantle, fg = C.overlay0 },
    -- BufferInactiveIndex = { bg = C.mantle, fg = C.overlay0 },
    -- BufferInactiveTarget = { bg = C.mantle, fg = C.red },
    -- BufferTabpages = { bg = C.mantle, fg = C.none },
    -- BufferTabpage = { bg = C.mantle, fg = C.blue },
}
