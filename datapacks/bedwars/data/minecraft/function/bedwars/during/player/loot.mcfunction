##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0

data modify storage test Pos set from entity @s Pos
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

scoreboard players reset @s die

execute if entity @a[scores={bw.kill=1..}] at @a[scores={bw.kill=1..}] run scoreboard players operation @a[scores={bw.kill=1..},limit=1] bw.tmp.ir = @s bw.tmp.ir
execute if entity @a[scores={bw.kill=1..}] at @a[scores={bw.kill=1..}] run scoreboard players operation @a[scores={bw.kill=1..},limit=1] bw.tmp.gd = @s bw.tmp.gd
execute if entity @a[scores={bw.kill=1..}] at @a[scores={bw.kill=1..}] run scoreboard players operation @a[scores={bw.kill=1..},limit=1] bw.tmp.dm = @s bw.tmp.dm
execute if entity @a[scores={bw.kill=1..}] at @a[scores={bw.kill=1..}] run scoreboard players operation @a[scores={bw.kill=1..},limit=1] bw.tmp.em = @s bw.tmp.em

execute at @e[limit=1,tag=bw.bed.yellow] if block ~ ~ ~ yellow_bed run tag @s[team=bw.yellow] add bw.fhing
execute at @e[limit=1,tag=bw.bed.green] if block ~ ~ ~ lime_bed run tag @s[team=bw.green] add bw.fhing
execute at @e[limit=1,tag=bw.bed.blue] if block ~ ~ ~ blue_bed run tag @s[team=bw.blue] add bw.fhing
execute at @e[limit=1,tag=bw.bed.red] if block ~ ~ ~ red_bed run tag @s[team=bw.red] add bw.fhing
execute as @s[tag=!bw.fhing] run tag @s remove bw.play
tag @s remove bw.fhing

execute unless entity @a[scores={bw.kill=1..}] as @s[tag=bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7死了。"]
execute unless entity @a[scores={bw.kill=1..}] as @s[tag=!bw.play] run tellraw @a[tag=bw.player] [{"selector":"@s"},"§7死了。\u00a7b\u00a7l最终击杀！"]

execute as @a[scores={bw.kill=1..}] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @a[scores={bw.kill=1..}] if score @s bw.tmp.ir matches 1.. run tellraw @s [{"text":"+ ","color":"white"},{"score":{"objective":"bw.tmp.ir","name":"@s"},"color":"white"},{"text":" 铁锭","color":"white"}]
execute as @a[scores={bw.kill=1..}] if score @s bw.tmp.gd matches 1.. run tellraw @s [{"text":"+ ","color":"gold"},{"score":{"objective":"bw.tmp.gd","name":"@s"},"color":"gold"},{"text":" 金锭","color":"gold"}]
execute as @a[scores={bw.kill=1..}] if score @s bw.tmp.dm matches 1.. run tellraw @s [{"text":"+ ","color":"aqua"},{"score":{"objective":"bw.tmp.dm","name":"@s"},"color":"aqua"},{"text":" 钻石","color":"aqua"}]
execute as @a[scores={bw.kill=1..}] if score @s bw.tmp.em matches 1.. run tellraw @s [{"text":"+ ","color":"dark_green"},{"score":{"objective":"bw.tmp.em","name":"@s"},"color":"dark_green"},{"text":" 绿宝石","color":"dark_green"}]

execute if score bw.mode state matches 3 as @s at @s run function minecraft:bedwars/special/xp_loot
execute if score bw.mode state matches 7 as @s at @s run function minecraft:bedwars/special/xp_loot

execute as @a[scores={bw.kill=1..}] at @s run function bedwars/during/player/getitem
# execute unless entity @a[scores={bw.kill=1..}] run function minecraft:bedwars/during/player/loot_spawn_item

scoreboard players reset @a[tag=bw.player] bw.kill
scoreboard players reset @s bw.tmp.ir
scoreboard players reset @s bw.tmp.gd
scoreboard players reset @s bw.tmp.em
scoreboard players reset @s bw.tmp.dm