-- debug recipies to test things

if false then
    data:extend{
        {
            type="recipe",
            name="testing-2",
            enabled=true,
            energy_required=0.75,
            ingredients={{"wood", 1}},
            results={{type = "item", name = "wood", amount_min = 1, amount_max = 5, catalyst_amount = 1}}
        }
    }

    local uber_testing_module = table.deepcopy(data.raw.module["productivity-module"])
    uber_testing_module.name = "uber-testing-module"
    uber_testing_module.effect = {productivity = {bonus = 1}}

    data:extend{uber_testing_module}

    for k, v in pairs(data.raw.module) do
        if v.limitation then
            table.insert(v.limitation, "testing-2")
        end
    end
end
