local FOODGROUP = GLOBAL.FOODGROUP
local FOODTYPE = GLOBAL.FOODTYPE

local function overrideDiet(inst)
    if not GLOBAL.TheWorld.ismastersim then return inst end
    inst.components.eater:SetDiet({FOODGROUP.OMNI, FOODTYPE.ROUGHAGE},
                                  {FOODGROUP.OMNI, FOODTYPE.ROUGHAGE})
end

AddPrefabPostInit("beefalo", overrideDiet)
