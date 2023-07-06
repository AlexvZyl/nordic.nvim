local C = require 'nordic.colors'
local O = require('nordic.config').options

local groups = {

    LeapLabelPrimary = { bg = C.yellow.dim, fg = C.black, bold = true },
}

if O.leap.dim_backdrop then groups.LeapBackdrop = { fg = C.gray4 } end

return groups
