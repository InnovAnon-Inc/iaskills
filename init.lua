-- Global
iaskills = {}

local base     = core.settings:get "iaskills_base"   or 100
local factor   = core.settings:get "iaskills_factor" or   1
iaskills.start = core.settings:get "iaskills_start"  or   0

function iaskills.cost_func(level)
	return factor*(base^level)
end

SkillsFramework.define_skill({
	mod="iaskills",
	name="Melee",
	cost_func=iaskills.cost_func,
	group="Basic Skills",
	--max=20,
	min=start,
	--on_levelup=function(set_id, level)
		--if level == 3 then
		--	Skillsframework.append_skills(set_id, "iawe:Alchemy"
		--end
	--end,
})
SkillsFramework.define_skill({
	mod="iaskills",
	name="Defense",
	cost_func=iaskills.cost_func,
	group="Basic Skills",
	min=start,
})
SkillsFramework.define_skill({
	mod="iaskills",
	name="Ranged",
	cost_func=iaskills.cost_func,
	group="Basic Skills",
	min=start,
})
SkillsFramework.define_skill({
	mod="iaskills",
	name="Crafting",
	cost_func=iaskills.cost_func,
	group="Basic Skills",
	min=start,
})
SkillsFramework.define_skill({
	mod="iaskills",
	name="Mining",
	cost_func=iaskills.cost_func,
	group="Basic Skills",
	min=start,
})
SkillsFramework.define_skill({
	mod="iaskills",
	name="Digging",
	cost_func=iaskills.cost_func,
	group="Basic Skills",
	min=start,
})
SkillsFramework.define_skill({
	mod="iaskills",
	name="Smelting",
	cost_func=iaskills.cost_func,
	group="Basic Skills",
	min=start,
})
SkillsFramework.define_skill({
	mod="iaskills",
	name="Cooking",
	cost_func=iaskills.cost_func,
	group="Basic Skills",
	min=start,
})
SkillsFramework.define_skill({
	mod="iaskills",
	name="Woodcutting",
	cost_func=iaskills.cost_func,
	group="Basic Skills",
	min=start,
})

minetest.register_on_newplayer(function(ref)
	local set_id = ref:get_player_name()
	assert(set_id ~= "")
	--SkillsFramework.attach_skillset(set_id, {
	SkillsFramework.append_skills(set_id, {
		"iaskills:Melee",
		"iaskills:Defense",
		"iaskills:Ranged",
		"iaskills:Crafting",
		"iaskills:Mining",
		"iaskills:Digging",
		"iaskills:Smelting",
		"iaskills:Cooking",
		"iaskills:Woodcutting",
	})
	--SkillsFramework.attach_skillset(set_id, nil)
end)

--minetest.register_on_placenode(func(pos, newnode, placer, oldnode, itemstack, pointed_thing))

--minetest.register_on_dignode(func(pos, oldnode, digger))

--minetest.register_on_punchnode(func(pos, node, puncher, pointed_thing))

--minetest.register_on_punchplayer(func(player, hitter, time_from_last_punch, tool_capabilities, dir, damage))

--minetest.register_on_craft(func(itemstack, player, old_craft_grid, craft_inv))

print ("[MOD] IA Skills loaded")
