--
require "script.cmds"
--
script.on_init(function ()
	apply_unrealplayer_settings()
end)
--
script.on_configuration_changed(function (data)
	apply_unrealplayer_settings()
end)
--
script.on_event(defines.events.on_runtime_mod_setting_changed,function ()
	apply_unrealplayer_settings()
end)
--
function apply_unrealplayer_settings()
	local settings = settings.global
	game.surfaces[1].always_day = settings["mj_day"]["value"]
	game.forces["player"].character_health_bonus = settings["mj_health"]["value"]
	game.forces["player"].character_reach_distance_bonus = settings["mj_distance"]["value"]
	game.forces["player"].character_resource_reach_distance_bonus = settings["mj_distance"]["value"]
	game.forces["player"].character_build_distance_bonus = settings["mj_distance"]["value"]
	game.forces["player"].character_item_drop_distance_bonus = settings["mj_distance"]["value"]
	game.forces["player"].character_item_pickup_distance_bonus = settings["mj_pickup"]["value"]
	game.forces["player"].character_loot_pickup_distance_bonus = settings["mj_pickup"]["value"]
	game.forces["player"].manual_mining_speed_modifier = settings["mj_mining"]["value"]
	game.forces["player"].manual_crafting_speed_modifier = settings["mj_crafting"]["value"]
	game.forces["player"].character_inventory_slots_bonus = settings["mj_inventory"]["value"]
	game.forces["player"].character_trash_slot_count = settings["mj_trash"]["value"]
	game.forces["player"].mining_drill_productivity_bonus = settings["mj_drill"]["value"]
	game.forces["player"].laboratory_speed_modifier = settings["mj_laboratory_speed"]["value"]
	game.forces["player"].laboratory_productivity_bonus = settings["mj_laboratory_productivity"]["value"]
	game.forces["player"].character_running_speed_modifier = settings["mj_running"]["value"]
end
--