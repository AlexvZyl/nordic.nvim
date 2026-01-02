local M = {}

M.NAME = 'nordic'
function M.loaded()
    return vim.g.colors_name == M.NAME
end

function M.apply_highlights(groups)
    for group, config in pairs(groups) do
        vim.api.nvim_set_hl(0, group, config)
    end
end

function M.hexify(value)
    if type(value) == 'number' then
        return string.format('#%06X', value)
    elseif type(value) == 'table' then
        return vim.tbl_map(M.hexify, value)
    end
    return value
end

function M.get_highlight(group)
    return M.hexify(vim.api.nvim_get_hl(0, { name = group, create = false }))
end

function M.none()
    return 'NONE'
end

function M.is_none(string)
    return string == 'NONE' or string == 'none'
end

function M.is_table(value)
    return type(value) == 'table'
end

function M.merge(t1, t2)
    if not t1 then
        return t2 or {}
    elseif not t2 then
        return t1
    end
    return vim.tbl_deep_extend('force', t1, t2)
end

function M.merge_inplace(t1, t2)
    -- clone values
    for k, v in pairs(t1) do
        if M.is_table(v) then
            t1[k] = {}
            M.merge_inplace(t1[k], v)
        end
    end

    -- merge
    for k, v in pairs(t2) do
        if M.is_table(v) then
            if not M.is_table(t1[k]) then t1[k] = {} end
            M.merge_inplace(t1[k], v)
        else
            t1[k] = v
        end
    end
end

function M.hex_to_rgb(str)
    str = string.lower(str)
    return tonumber(str:sub(2, 3), 16), tonumber(str:sub(4, 5), 16), tonumber(str:sub(6, 7), 16)
end

function M.rgb_to_hex(r, g, b)
    return '#' .. string.format('%02X', r) .. string.format('%02X', g) .. string.format('%02X', b)
end

-- Adapted from @folke/tokyonight.nvim.
function M.blend(foreground, background, alpha)
    if M.is_none(foreground) or M.is_none(background) then return M.none() end

    local fg = { M.hex_to_rgb(foreground) }
    local bg = { M.hex_to_rgb(background) }

    local blend_channel = function(c_fg, c_bg)
        local ret = (alpha * c_fg + ((1 - alpha) * c_bg))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return M.rgb_to_hex(blend_channel(fg[1], bg[1]), blend_channel(fg[2], bg[2]), blend_channel(fg[3], bg[3]))
end

function M.assert_eq(left, right, message)
    if not vim.deep_equal(left, right) then
        local info = debug.getinfo(2)
        local file_name = info.short_src
        local line_number = info.currentline
        print('Equal assertion failed at "' .. file_name .. ':' .. line_number .. '"')
        print('Message: ' .. message)
        print('Left:\n' .. vim.inspect(left))
        print('Right:\n' .. vim.inspect(right))
    end
end

---Simple string interpolation.
---
---Example template: "${name} is ${age}"
---
--- This function is taken from tokyonight.
--- For more information see `platforms/init.lua`
---@param str string template string
---@param table table key value pairs to replace in the string
function M.template(str, table)
    return (
        str:gsub('($%b{})', function(w)
            return vim.tbl_get(table, unpack(vim.split(w:sub(3, -2), '.', { plain = true }))) or w
        end)
    )
end

---Remove the hash (#) from the beginning of all color values in a table
---@param colors table
function M.removeHash(colors)
    local output_colors = {}
    for k, v in pairs(colors) do
        if type(v) == 'string' then
            output_colors[k] = v:gsub('^#', '')
        elseif type(v) == 'table' then
            output_colors[k] = M.removeHash(v)
        end
    end

    return output_colors
end

---Write a file and its contents to disk
---
--- This function is taken from tokyonight.
--- For more information see `platforms/init.lua`
---@param path string
---@param contents string
function M.write(path, contents)
    vim.fn.mkdir(vim.fn.fnamemodify(path, ':h'), 'p')
    local fd = assert(io.open(path, 'w+'))
    fd:write(contents)
    fd:close()
end

return M
