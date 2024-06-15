local assert_eq = require('nordic.tests').assert_eq
local U = require('nordic.utils')

local function round(value, places)
    return tonumber(string.format("%." .. places .. "f", value))
end

-- none
assert_eq(U.none(), 'NONE', 'utils.none() should return "NONE"')

-- is_none
assert_eq(U.is_none('NONE'), true, 'U.is_none("NONE") should return true')
assert_eq(U.is_none('none'), true, 'U.is_none("none") should return true')
assert_eq(U.is_none('nil'), false, 'U.is_none("nil") should return false')

-- is_table
assert_eq(U.is_table('string'), false, 'U.is_table("string") should return false')
assert_eq(U.is_table(4), false, 'U.is_table(4) should return false')
assert_eq(U.is_table({}), true, 'U.is_table({}) should return true')

-- merge
assert_eq(U.merge({}, {}), {}, 'U.merge({}, {}) should return an empty table')

assert_eq(U.merge(nil, nil), {}, 'U.merge(nil, nil) should return an empty table')

assert_eq(U.merge(nil, {a = 1}), {a = 1}, 'U.merge(nil, {a = 1}) should return {a = 1}')
assert_eq(U.merge({a = 1}, nil), {a = 1}, 'U.merge({a = 1}, nil) should return {a = 1}')

assert_eq(U.merge({a = 1, b = 3}, {b = 2, c = 4}), {a = 1, b = 2, c = 4}, 'U.merge({a = 1, b = 3}, {b = 2, c = 4}) should return {a = 1, b = 2, c = 4}')

-- merge_inplace
local t1 = {a = 1}
local t2 = {b = 2}
U.merge_inplace(t1, t2)
assert_eq(t1, {a = 1, b = 2}, 'U.merge_inplace(t1, t2) basic merge')

local t1 = {a = 1, b = 3}
local t2 = {b = 2, c = 4}
U.merge_inplace(t1, t2)
assert_eq(t1, {a = 1, b = 2, c = 4}, 'U.merge_inplace(t1, t2) overwriting values')

local t1 = {a = 1, d = {x = 10}}
local t2 = {d = {y = 20}, e = 5}
U.merge_inplace(t1, t2)
assert_eq(t1, {a = 1, d = {x = 10, y = 20}, e = 5}, 'U.merge_inplace(t1, t2) nested tables')

local nested = { y = 20 }
local t1 = {d = nested, e = 5}
local t2 = {a = 1}
U.merge_inplace(t1, t2)
assert_eq(t1['d'] ~= nested, true, 'U.merge_inplace(t1, t2) copy t1 nested values')

local nested = { y = 20 }
local t1 = {a = 1}
local t2 = {d = nested, e = 5}
U.merge_inplace(t1, t2)
assert_eq(t1['d'] ~= nested, true, 'U.merge_inplace(t1, t2) copy t2 nested values')

-- hex_to_rgb
assert_eq({ U.hex_to_rgb('#191D24') }, {25, 29, 36}, 'U.hex_to_rgb("#191D24") should return 25, 29, 36')

-- rgb_to_hex
assert_eq(U.rgb_to_hex(25, 29, 36), '#191D24', 'U.rgb_to_hex(25, 29, 36) should return "#191D24"')

-- rgb_to_hsv
local h, s, v = U.rgb_to_hsv(25, 29, 36)
local rh = round(h, 4)
local rs = round(s, 4)
local rv = round(v, 4)
assert_eq({rh, rs, rv}, {0.6061, 0.3056, 0.1412}, 'U.rgb_to_hsv(25, 29, 36) should return approximately 0.6061, 0.3056, 0.1412')
