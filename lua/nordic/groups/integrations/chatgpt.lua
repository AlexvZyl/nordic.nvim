if vim.fn.exists('chatgpt') then

    local c = require 'nordic.colors'

    require 'chatgpt' .setup {
        chat = {
            sessions_window = {
                win_options= {
                    winhighlight = 'Normal:TelescopePromptNormal,FloatBorder:TelescopeBorder'
                }
            }
        }
    }

    return {
        ChatGPTTotalTokensBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark
        },
        ChatGPTTotalTokens = {
            bg = c.bg_dark,
            fg = c.grey0
        },
        ChatGPTWelcome = {
            bg = c.bg_dark,
            fg = c.grey4
        },
        ChatGPTQuestion = {
            fg = c.blue1
        },
        ChatGPTCompletion = {
            -- fg = c.red.base
        }
    }

end

return {}
