local U = require('nordic.utils')

local M = {}

function M.generate(colors)
    return U.template(
        [[
# Default colors
[colors.primary]
background = '${bg}'
foreground = '${fg}'
# Bright and dim foreground colors
dim_foreground = '${gray3}'
bright_foreground = '${gray3}'

# Cursor colors
[colors.cursor]
text = '${fg}'
cursor = '${green.dim}'

[colors.vi_mode_cursor]
text = '${fg}'
cursor = '${green.dim}'

# Search colors
[colors.search.matches]
foreground = '${fg}'
background = '${gray2}'

[colors.search.focused_match]
foreground = '${fg}'
background = '${green.base}'

[colors.footer_bar]
foreground = '${fg}'
background = '${gray2}'

# Keyboard regex hints
[colors.hints.start]
foreground = '${fg}'
background = '${yellow.base}'

[colors.hints.end]
foreground = '${fg}'
background = '${gray2}'

# Selection colors
[colors.selection]
text = '${white0}'
background = '${gray1}'

# Normal colors
[colors.normal]
black = '${black1}'
red = '${red.base}'
green = '${green.base}'
yellow = '${yellow.base}'
blue = '${blue0}'
magenta = '${magenta.base}'
cyan = '${cyan.base}'
white = '${white1}'

# Bright colors
[colors.bright]
black = '${gray2}'
red = '${red.bright}'
green = '${green.bright}'
yellow = '${yellow.bright}'
blue = '${blue1}'
magenta = '${magenta.bright}'
cyan = '${cyan.bright}'
white = '${white2}'

# Dim colors
[colors.dim]
black = '${black0}'
red = '${red.dim}'
green = '${green.dim}'
yellow = '${yellow.dim}'
blue = '${blue2}'
magenta = '${magenta.dim}'
cyan = '${cyan.dim}'
white = '${white0}'
]],
        colors
    )
end

return M
