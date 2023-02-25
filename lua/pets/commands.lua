local pets = require("pets")
local utils = require("pets.utils")

vim.api.nvim_create_user_command("PetsNew", function(input)
    vim.notify(
        "Pets is currently searching for new assetes due to licensing issues with the previous ones,\nif you still have them please remove them or buy the asset pack. See #26 on github if you want to suggest anything.",
        vim.log.levels.INFO
    )
    --[[ local pet, style = pets.options.default_pet, pets.options.default_style

    -- validate the pets and style options
    if not utils.validate_type_style(pet, style) then
        return
    end

    if pets.options.random then
        local styles = utils.available_pets["cat"]
        pet, style = "cat", styles[math.random(#styles)]
    end

    pets.create_pet(input.args, pet, style) ]]
end, { nargs = 1 })

vim.api.nvim_create_user_command("PetsNewCustom", function(input)
    --[[ local args = vim.split(input.args, " ", { trimempty = true })
    if #args ~= 3 then
        utils.warning("Inccorect number of arguments!\nUSAGE: PetsNewCustom {type} {style} {name}")
        return
    end
    local type, style, name = args[1], args[2], args[3]
    if not utils.validate_type_style(type, style) then
        return
    end
    pets.create_pet(name, type, style) ]]
    vim.notify(
        "Pets is currently searching for new assetes due to licensing issues with the previous ones,\nif you still have them please remove them or buy the asset pack. See #26 on github if you want to suggest anything.",
        vim.log.levels.INFO
    )
end, { nargs = 1, complete = utils.complete_typestyle })

vim.api.nvim_create_user_command("PetsKillAll", function()
    -- pets.kill_all()
    vim.notify(
        "Pets is currently searching for new assetes due to licensing issues with the previous ones,\nif you still have them please remove them or buy the asset pack. See #26 on github if you want to suggest anything.",
        vim.log.levels.INFO
    )
end, {})

vim.api.nvim_create_user_command("PetsKill", function(input)
    -- pets.kill_pet(input.args)
    vim.notify(
        "Pets is currently searching for new assetes due to licensing issues with the previous ones,\nif you still have them please remove them or buy the asset pack. See #26 on github if you want to suggest anything.",
        vim.log.levels.INFO
    )
end, {
    nargs = 1,
    complete = utils.complete_name,
})

vim.api.nvim_create_user_command("PetsList", function()
    -- pets.list()
    vim.notify(
        "Pets is currently searching for new assetes due to licensing issues with the previous ones,\nif you still have them please remove them or buy the asset pack. See #26 on github if you want to suggest anything.",
        vim.log.levels.INFO
    )
end, {})

vim.api.nvim_create_user_command("PetsPauseToggle", function()
    -- pets.toggle_pause()
    vim.notify(
        "Pets is currently searching for new assetes due to licensing issues with the previous ones,\nif you still have them please remove them or buy the asset pack. See #26 on github if you want to suggest anything.",
        vim.log.levels.INFO
    )
end, {})

vim.api.nvim_create_user_command("PetsHideToggle", function()
    -- pets.toggle_hide()
    vim.notify(
        "Pets is currently searching for new assetes due to licensing issues with the previous ones,\nif you still have them please remove them or buy the asset pack. See #26 on github if you want to suggest anything.",
        vim.log.levels.INFO
    )
end, {})

vim.api.nvim_create_user_command("PetsSleepToggle", function()
    -- pets.toggle_sleep()
    vim.notify(
        "Pets is currently searching for new assetes due to licensing issues with the previous ones,\nif you still have them please remove them or buy the asset pack. See #26 on github if you want to suggest anything.",
        vim.log.levels.INFO
    )
end, {})
