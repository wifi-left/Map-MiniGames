execute if score live.map board matches 0 as @s[team=live] run function minecraft:live/items/runner_flyable
execute if score live.map board matches 1 as @s[team=live] run function minecraft:live/items/runner_nofly


execute if score live.map board matches 0 as @s[team=live.killer] run function minecraft:live/items/killer_flyable
execute if score live.map board matches 1 as @s[team=live.killer] run function minecraft:live/items/killer_nofly