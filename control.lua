script.on_init(function ()
	apply_unrealplayer_settings()
end)

script.on_configuration_changed(function (data)
	apply_unrealplayer_settings()
end)

script.on_event(defines.events.on_runtime_mod_setting_changed,function ()
	apply_unrealplayer_settings()
end)

function apply_unrealplayer_settings()
	local settings = settings.global
	game.forces["player"].character_health_bonus = settings["mj_health"]["value"] - mj_health
	game.forces["player"].character_reach_distance_bonus = settings["mj_distance"]["value"] - mj_distance
	game.forces["player"].character_resource_reach_distance_bonus = settings["mj_distance"]["value"] - mj_distance
	game.forces["player"].character_build_distance_bonus = settings["mj_distance"]["value"] - mj_distance
	game.forces["player"].character_item_drop_distance_bonus = settings["mj_distance"]["value"] - mj_distance
	game.forces["player"].character_item_pickup_distance_bonus = settings["mj_pickup"]["value"] - mj_pickup
	game.forces["player"].character_loot_pickup_distance_bonus = settings["mj_pickup"]["value"] - mj_pickup
	game.forces["player"].manual_mining_speed_modifier = settings["mj_mining"]["value"] - mj_mining
	game.forces["player"].manual_crafting_speed_modifier = settings["mj_crafting"]["value"] - mj_crafting
	game.forces["player"].character_inventory_slots_bonus = settings["mj_inventory"]["value"] - mj_inventory
	game.forces["player"].character_trash_slot_count = settings["mj_trash"]["value"] - mj_trash
	game.forces["player"].mining_drill_productivity_bonus = settings["mj_drill"]["value"] - mj_drill
	game.forces["player"].laboratory_speed_modifier = settings["mj_laboratory_speed"]["value"] - mj_laboratory_speed
	game.forces["player"].laboratory_productivity_bonus = settings["mj_laboratory_productivity"]["value"] - mj_laboratory_productivity
	game.forces["player"].character_running_speed_modifier = settings["mj_running"]["value"] - mj_running
end