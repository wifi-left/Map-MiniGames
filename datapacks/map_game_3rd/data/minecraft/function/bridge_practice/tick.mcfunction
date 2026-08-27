execute as @a[team=bw.bridge,gamemode=adventure] at @s if block ~ ~-1 ~ barrier run function minecraft:bridge_practice/failed
execute as @e[type=item] at @s if block ~ ~-1 ~ barrier run kill @s
execute as @e[type=falling_block] at @s if block ~ ~-1 ~ barrier run kill @s
execute as @e[type=falling_block] at @s if block ~ ~-2 ~ barrier run kill @s
execute as @a[team=bw.bridge,gamemode=adventure] at @s if block ~ ~-1 ~ diamond_block run function minecraft:bridge_practice/win

execute as @a[team=bw.bridge,gamemode=adventure] at @s run kill @e[type=item,distance=..5]

execute as @a[team=bw.bridge,gamemode=adventure] if score @s bw.bridge.place.wool matches 1.. run function minecraft:bridge_practice/place

scoreboard players add @a[team=bw.bridge,gamemode=adventure,tag=bw.bridge.started] parkour.tick 1

execute as @a[team=bw.bridge,gamemode=adventure] run function minecraft:bridge_practice/give_items