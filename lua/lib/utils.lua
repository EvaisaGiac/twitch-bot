local utils = {}

--- Cleans the "n" item off your "arg" object
-- @param args The arg object on a function taking ... arguments
-- @return A table with the "n" item cleaned off
--
function utils.clean_arg(args)

    local options = {}
    for k, v in pairs(args) do
        if k ~= "n" then
            options[k] = v
        end
    end

    return options
end

--- Return a random item of the given arguments
-- @param ... Any number of options
-- @return One of the given options
function utils.random(...)
    local options = utils.clean_arg(arg)
    local index = math.random(1, #options)

    return options[index]
end

--- Filter the list to only include unique entries
-- @param values List of values
-- @param func Function to return the item's unique key
-- @return List of unique values, with sequential keys
function utils.unique(values, func)
    -- List of unique keys we have encountered so far
    local unique_keys = {}

    local unique_key
    local key_adjustment = 0

    local result = {}
    for key, value in pairs(values) do
        unique_key = func(value)

        if unique_keys[unique_key] == nil then
            unique_keys[unique_key] = true
            result[key + key_adjustment] = value
        else
            key_adjustment = key_adjustment - 1
        end
    end

    return result
end

--- Limit the length of the given table to the given length
-- @param values List of values
-- @param length Maximum length
-- @return List of values up to the maximum length
function utils.limit(values, length)
    local result = {}
    local result_length = 0

    for key, value in pairs(values) do
        if result_length < length then
            result[key] = value
            result_length = result_length + 1
        end
    end

    return result
end

return utils