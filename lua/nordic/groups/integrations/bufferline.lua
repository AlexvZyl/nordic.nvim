local C = require 'nordic.colors'
local blend = require 'nordic.utils'.blend

local inactive_bg = blend(C.gray0, C.black, 0.4)

return {

    BufferLineBufferVisible = { bg = C.bg, fg = C.gray4, underline = true, sp = C.bg_dark },
    BufferLineBufferSelected = { fg = C.fg },

    BufferLineCloseButtonVisible = { fg = C.gray4, underline = true, sp = C.bg_dark },

    BufferLineSeparatorSelected = { bg = C.bg },
    BufferLineSeparatorVisible = { underline = true, sp = C.bg_dark },

    BufferLineFill = { bg = C.bg_dark },

    BufferLinePick = { fg = C.red.bright },

    BufferLineModified = { fg = C.fg },
    BufferLineModifiedVisible = { fg = C.gray4, underline = true, sp = C.bg_dark },
    BufferLineModifiedSelected = { fg = C.fg },

    BufferLineOffset = { fg = C.yellow.base, bg = C.black, bold = true },
    BufferLineOffsetSeparator = { bg = C.black, fg = C.black },

    BufferLineDevIconLuaInactive = { bg = C.bg, underline = true, sp = C.bg_dark }

}
