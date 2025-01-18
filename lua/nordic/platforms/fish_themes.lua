local U = require('nordic.utils')

local M = {}

function M.generate(colors)
    local fishColors = U.removeHash(colors)

    local foot = U.template(
        [[
# Name: Nordic
# Auother: XXiaoA
# https://fishshell.com/docs/current/interactive.html#syntax-highlighting-variables

# Syntax Highlighting Colors
fish_color_normal ${blue1}
fish_color_command ${yellow.base}
fish_color_keyword ${magenta.base}
fish_color_quote ${green.base}
fish_color_redirection ${white1}
fish_color_end ${white0_normal}
fish_color_error ${error}
fish_color_param ${blue2}
fish_color_comment ${gray4}
fish_color_selection --background=${gray2}
fish_color_search_match --background=${black1}
fish_color_operator ${orange.base}
fish_color_escape ${blue1}
fish_color_autosuggestion ${gray5}

# Completion Pager Colors
fish_pager_color_progress ${blue1}
fish_pager_color_prefix ${yellow.base}
fish_pager_color_completion ${white1}
fish_pager_color_description ${blue1}
fish_pager_color_selected_background --background=${gray2}
]],
        fishColors
    )

    return foot
end

return M
