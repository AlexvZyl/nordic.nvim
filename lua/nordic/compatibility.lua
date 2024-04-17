local function compatability(options)
    -- All backwards compatibility

    -- Log level
    local level = vim.log.levels.WARN
    -- Message Options
    local message_options = {
        title = 'Warning from nordic.nvim',
    }

    -- transparent_bg
    if options.transparent_bg ~= nil then
        vim.notify_once('Nordic.nvim: config.transparent_bg is deprecated, use config.transparent instead', level, message_options)
        if not options.transparent then
            options.transparent = {
                bg = options.transparent_bg,
                float = options.transparent_bg,
            }
        end
    end

    return options
end

return compatability
