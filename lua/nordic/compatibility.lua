local function compatability(options)
    -- All backwards compatibility

    -- Log level
    local level = vim.log.levels.WARN

    -- transparent_bg
    if options.transparent_bg then
        vim.notify_once('Nordic.nvim: config.transparent_bg is deprecated, use config.transparent instead', level)
        if not options.transparent then
            options.transparent = {
                bg = true,
                float = true,
            }
        end
    end

    return options
end

return compatability
