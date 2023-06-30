local c = require 'nordic.colors'
local blend = require 'nordic.utils'.blend

local inactive_bg = blend(c.gray0, c.black, 0.4)

return {

    BufferLineBufferVisible = { bg = c.bg, fg = c.gray4, underline = true, sp = c.bg_dark },
    BufferLineBufferSelected = { fg = c.fg },

    BufferLineCloseButtonVisible = { fg = c.gray4, underline = true, sp = c.bg_dark },

    BufferLineSeparatorSelected = { bg = c.bg },
    BufferLineSeparatorVisible = { underline = true, sp = c.bg_dark },

    BufferLineFill = { bg = c.bg_dark },

    BufferLinePick = { fg = c.red.bright },

    BufferLineModified = { fg = c.fg },
    BufferLineModifiedVisible = { fg = c.gray4, underline = true, sp = c.bg_dark },
    BufferLineModifiedSelected = { fg = c.fg },

    BufferLineOffset = { fg = c.yellow.base, bg = c.black1, bold = true },
    BufferLineOffsetSeparator = { bg = c.black1, fg = c.black1 },

    BufferLineDevIconLuaInactive = { bg = c.bg, underline = true, sp = c.bg_dark }

}
