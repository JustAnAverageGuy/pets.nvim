local M = {}

M.options = {
    row = 1,
    col = 0,
}

M.pets = {}

function M.setup(options)
    options = options or {}
    M.options = vim.tbl_deep_extend("force", M.options, options)

    -- init hologram
    local ok = pcall(require, "hologram")
    if ok then
        require("hologram").setup({ auto_display = false })
    end

    require("pets.commands") -- init autocommands
end

-- create a Pet object and add it to the pets table
function M.create_pet(name, type, style)
    if M.pets[name] ~= nil then
        vim.api.nvim_err_writeln("Name already in use")
        return
    end
    local pet = require("pets.pet").Pet.new(name, type, style, M.options.row, M.options.col)
    pet:animate()
    M.pets[pet.name] = pet
end

function M.kill_pet(name)
    if M.pets[name] ~= nil then
        M.pets[name]:kill()
        M.pets[name] = nil
    else
        vim.api.nvim_err_writeln("Pet name not found")
    end
end

function M.kill_all()
    for _, pet in pairs(M.pets) do
        pet:kill()
    end
    M.pets = {}
end

function M.list()
    for _, pet in pairs(M.pets) do
        print(pet.name)
    end
end

return M
