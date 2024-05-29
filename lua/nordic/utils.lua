local M = {}

M.NAME = 'nordic'
function M.loaded()
    return vim.g.colors_name == M.NAME
end

function M.highlight(table)
    for group, config in pairs(table) do
        vim.api.nvim_set_hl(0, group, config)
    end
end

function M.is_none(string)
    return string == 'NONE' or string == 'none'
end

function M.none()
    return 'NONE'
end

function M.merge(table1, table2)
    if table1 == table2 == nil then return {} end
    if table1 == nil then
        return table2
    elseif table2 == nil then
        return table1
    end
    return vim.tbl_deep_extend('force', table1, table2)
end

function M.merge_inplace(table1, table2)
    for k, v in pairs(table2) do
        if type(v) == "table" then
            if type(table1[k]) ~= "table" then
                table1[k] = {}
            end
            M.merge_inplace(table1[k], v)
        else
            table1[k] = v
        end
    end
end

function M.hex_to_rgb(str)
    str = string.lower(str)
    return tonumber(str:sub(2, 3), 16), tonumber(str:sub(4, 5), 16), tonumber(str:sub(6, 7), 16)
end

function M.rgb_to_hex(r, g, b)
    return '#' .. string.format('%x', r) .. string.format('%x', g) .. string.format('%x', b)
end

function M.rgb_to_hsv(r, g, b)
    r, g, b = r / 255, g / 255, b / 255
    local max, min = math.max(r, g, b), math.min(r, g, b)

    local h, s, v
    v = max

    local d = max - min
    if max == 0 then
        s = 0
    else
        s = d / max
    end

    if max == min then
        h = 0
    else
        if max == r then
            h = (g - b) / d
            if g < b then h = h + 6 end
        elseif max == g then
            h = (b - r) / d + 2
        elseif max == b then
            h = (r - g) / d + 4
        end
        h = h / 6
    end

    return h, s, v
end

function M.hsv_to_rbg(h, s, v)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then
        r, g, b = v, t, p
    elseif i == 1 then
        r, g, b = q, v, p
    elseif i == 2 then
        r, g, b = p, v, t
    elseif i == 3 then
        r, g, b = p, q, v
    elseif i == 4 then
        r, g, b = t, p, v
    elseif i == 5 then
        r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255
end

function M.darken(hex, amount)
    local r, g, b = M.hex_to_rgb(hex)
    local h, s, v = M.rgb_to_hsv(r, g, b)
    v = v * ((1 - amount) / 1)
    r, g, b = M.hsv_to_rbg(h, s, v)
    return M.rgb_to_hex(r, g, b)
end

function M.lighten(hex, amount)
    local r, g, b = M.hex_to_rgb(hex)
    local h, s, v = M.rgb_to_hsv(r, g, b)
    v = v * (1 + amount)
    r, g, b = M.hsv_to_rbg(h, s, v)
    return M.rgb_to_hex(r, g, b)
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

return M
