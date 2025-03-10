Config = {}

---@enum Framework
FRAMEWORKS = {
    auto = "auto",
    esx = "esx",
}

---Framework you're using (automatic should be fine)
---@type Framework
Config.framework = FRAMEWORKS.auto

---The way for the menu to show up
---@type "walk" | "keypress" | "target"
Config.interactMode = "target"
---The way players get listed in menus
---@type "name" | "id" | "both"
Config.playerTag = "both"
---Time in seconds for invites to expire
---@type number
Config.inviteExpire = 15
---Range for being able to invite players
---@type number
Config.inviteRange = 10.0

---If the player needs to pay to decorate their property
---@type boolean
Config.paidDecoration = true

---Do you want to remove the property entities when all players leave?
---This does cause slower property entries but is recommended for larger servers
---to ensure the entity limit isn't breached.
---@type boolean
Config.unloadOnEmpty = true

---@type table<string, Keybind>
Config.Keybinds = {}

---@type Keybind
Config.Keybinds.invite = {
    padIndex = 0,
    control = 58,
    name = "INPUT_THROW_GRENADE"
}
---@type Keybind
Config.Keybinds.exitGarage = {
    padIndex = 0,
    control = 87,
    name = "INPUT_VEH_FLY_THROTTLE_UP"
}
---@type Keybind
Config.Keybinds.interact = {
    padIndex = 0,
    control = 38,
    name = "INPUT_PICKUP"
}

---@type table
Config.VehicleBlacklist = {
    ---@type number[]
    classes = {
        -- Put any vehicle class in here, make sure it is a number
        -- and is an output of GetVehicleClass (https://docs.fivem.net/natives/?_0x29439776AAA00A62)
        10, 11, 14, 15, 16, 17, 19, 20, 21
    },
    ---@type number[]
    models = {
        -- Put any vehicle hash in here, make sure it is a string, and an output
        -- of GetEntityModel (https://docs.fivem.net/natives/?_0x9F47B058362C84B5)

        -- For example:
        2069146067, -- Oppressor MK2
        -845961253, -- Liberator
    }
}

---@type table<string, Point>
Config.points = {}

---@type Point
Config.points.entrance = {
    viewDistance = 5.0,
    -- this is only used if Config.interactMode is set to "keypress"
    interact = Config.Keybinds.interact,
    marker = {
        type = 1,
        size = vec3(.8, .8, 1.0),
        vehicleSize = 3,
        offset = vec3(0, 0, -1),
        rotation = vec3(0, 0, 0),
        color = {
            r = 0,
            g = 192,
            b = 255,
            a = 100
        },
        bob = false,
        faceCamera = false
    }
}
-- the in-property point is set as the same
-- as the entrance point, if you'd like to
-- customize this you can do that
---@type Point
Config.points.property = Config.points.entrance

---@type PropertyBlips[]
Config.blips = {
    house = {
        owner = {
            sprite = 40,
            color = 2,
        },
        member = {
            sprite = 40,
            color = 3,
            short = true
        },
        renter = {
            sprite = 40,
            color = 5,
        },
        sale = {
            sprite = 350,
            color = 0,
            short = true
        },
    },
    warehouse = {
        owner = {
            sprite = 473,
            color = 2,
        },
        member = {
            sprite = 473,
            color = 3,
            short = true
        },
        renter = {
            sprite = 473,
            color = 5,
        },
        sale = {
            sprite = 474,
            color = 0,
            short = true
        },
    },
    office = {
        owner = {
            sprite = 475,
            color = 2,
        },
        member = {
            sprite = 475,
            color = 3,
            short = true
        },
        renter = {
            sprite = 475,
            color = 5,
        },
        sale = {
            sprite = 476,
            color = 0,
            short = true
        },
    },
    garage = {
        owner = {
            sprite = 357,
            color = 2,
        },
        member = {
            sprite = 357,
            color = 3,
            short = true
        },
        renter = {
            sprite = 357,
            color = 5,
        },
        sale = {
            sprite = 369,
            color = 0,
            short = true
        },
    },
}
