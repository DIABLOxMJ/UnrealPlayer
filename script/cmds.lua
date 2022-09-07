commands.add_command("up", "[UnrealPlayer] Used to control metrics in Unreal Player\n/up [list | day true-false | health 0-9999999 | distance 6-9999999 | pickup 0-30 | mining 0-9999999 | crafting 0-9999999 | inventory 0-9999999 | trash 0-9999999 | drill 0-9999999 | laboratory_speed 0-9999999 | laboratory_productivity 0-9999999 | running 0-9999999] ", function(param)
  player = game.players[param.player_index]
  if not player then return end
  if not player.admin then
    player.print("[UnrealPlayer] Commands are only available to admins")
    return
  end
  argsArr = split(param.parameter, " ")
  if argsArr[1] == "day" then
    game.surfaces[1].always_day = argsArr[2]
    player.print("[UnrealPlayer] Value always day changed!")
  elseif argsArr[1] == "health" then
    game.forces["player"].character_health_bonus = argsArr[2]
    player.print("[UnrealPlayer] Value health changed!")
  elseif argsArr[1] == "distance" then
    game.forces["player"].character_reach_distance_bonus = argsArr[2]
    game.forces["player"].character_resource_reach_distance_bonus = argsArr[2]
    game.forces["player"].character_build_distance_bonus = argsArr[2]
    game.forces["player"].character_item_drop_distance_bonus = argsArr[2]
    player.print("[UnrealPlayer] Value distance changed!")
  elseif argsArr[1] == "pickup" then
    game.forces["player"].character_item_pickup_distance_bonus = argsArr[2]
    game.forces["player"].character_loot_pickup_distance_bonus = argsArr[2]
    player.print("[UnrealPlayer] Value pickup changed!")
  elseif argsArr[1] == "mining" then
    game.forces["player"].manual_mining_speed_modifier = argsArr[2]
    player.print("[UnrealPlayer] Value mining changed!")
  elseif argsArr[1] == "crafting" then
    game.forces["player"].manual_crafting_speed_modifier = argsArr[2]
    player.print("[UnrealPlayer] Value crafting changed!")
  elseif argsArr[1] == "inventory" then
    game.forces["player"].character_inventory_slots_bonus = argsArr[2]
    player.print("[UnrealPlayer] Value inventory changed!")
  elseif argsArr[1] == "trash" then
    game.forces["player"].character_trash_slot_count = argsArr[2]
    player.print("[UnrealPlayer] Value trash changed!")
  elseif argsArr[1] == "drill" then
    game.forces["player"].mining_drill_productivity_bonus = argsArr[2]
    player.print("[UnrealPlayer] Value drill changed!")
  elseif argsArr[1] == "laboratory_speed" then
    game.forces["player"].laboratory_speed_modifier = argsArr[2]
    player.print("[UnrealPlayer] Value laboratory_speed changed!")
  elseif argsArr[1] == "laboratory_productivity" then
    game.forces["player"].laboratory_productivity_bonus = argsArr[2]
    player.print("[UnrealPlayer] Value laboratory_productivity changed!")
  elseif argsArr[1] == "running" then
    game.forces["player"].character_running_speed_modifier = argsArr[2]
    player.print("[UnrealPlayer] Value running changed!")
  elseif argsArr[1] == "list" then
    player.print("[UnrealPlayer] /up [list | day true-false | health 0-9999999 | distance 6-9999999 | pickup 0-30 | mining 0-9999999 | crafting 0-9999999 | inventory 0-9999999 | trash 0-9999999 | drill 0-9999999 | laboratory_speed 0-9999999 | laboratory_productivity 0-9999999 | running 0-9999999]")
  else
    player.print("[UnrealPlayer] Try list, For example:\n/up list")
  end
end)

function split(str, character)
  result = {}

  index = 1

  if str == nil then return result end
  if character == nil then return result end

  for s in string.gmatch(str, "[^"..character.."]+") do
    result[index] = s
    index = index + 1
  end

  return result
end