local c = require 'nordic.colors'
local o = require 'nordic.config' .options

local groups = {

    LeapLabelPrimary = {
        bg = c.yellow.dim,
        fg = c.black,
        bold = true,
    },

}

if o.leap.dim_backdrop then
    groups.LeapBackdrop = {
        fg = c.gray4
    }
end

return groups
