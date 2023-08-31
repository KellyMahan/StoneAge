local function deepCopy(original)
    local copy = {}
    for k, v in pairs(original) do
        -- as before, but if we find a table, make sure we copy that too
        if type(v) == "table" then
            v = deepCopy(v)
        end
        copy[k] = v
    end
    return copy
  end
  



stoneHouse = deepCopy(data.raw.roboport["roboport"])

stoneHouse.name = "stone-house"
stoneHouse.fast_replaceable_group = "house"

stoneHouse.energy_usage = "0W"
stoneHouse.recharge_minimum = "0W"

stoneHouse.robot_slots_count = 4
stoneHouse.material_slots_count = 4


stoneHouse.base.layers =
  {
    {
      filename = "__StoneAge__/graphics/entity/stone-house/stone-house.png",
      width = 128,
      height = 128
    }
  }


data:extend(
  {stoneHouse}
)