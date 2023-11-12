execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
# scoreboard players reset @s[tag=!bw.play] bw.kill
#gamemode spectator @s
data modify storage test Pos set from entity @s Pos
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0
scoreboard players reset @s die
execute if entity @a[scores={bw.kill=1..}] at @a[scores={bw.kill=1..}] run scoreboard players operation @a[scores={bw.kill=1..},limit=1] bw.tmp.ir = @s bw.tmp.ir
execute if entity @a[scores={bw.kill=1..}] at @a[scores={bw.kill=1..}] run scoreboard players operation @a[scores={bw.kill=1..},limit=1] bw.tmp.gd = @s bw.tmp.gd
execute if entity @a[scores={bw.kill=1..}] at @a[scores={bw.kill=1..}] run scoreboard players operation @a[scores={bw.kill=1..},limit=1] bw.tmp.dm = @s bw.tmp.dm
execute if entity @a[scores={bw.kill=1..}] at @a[scores={bw.kill=1..}] run scoreboard players operation @a[scores={bw.kill=1..},limit=1] bw.tmp.em = @s bw.tmp.em
# execute unless entity @a[scores={bw.kill=1..}] run data modify entity @e[type=marker,tag=loot,tag=neweee,limit=1] Pos set from storage test Pos
# scoreboard players operation @e[type=marker,tag=loot,tag=neweee] bw.tmp.ir = @s bw.tmp.ir
# scoreboard players operation @e[type=marker,tag=loot,tag=neweee] bw.tmp.gd = @s bw.tmp.gd
# scoreboard players operation @e[type=marker,tag=loot,tag=neweee] bw.tmp.dm = @s bw.tmp.dm
# scoreboard players operation @e[type=marker,tag=loot,tag=neweee] bw.tmp.em = @s bw.tmp.em
# tag @e[type=marker,tag=loot,tag=neweee] remove neweee
execute if entity @a[scores={bw.kill=1..}] run tellraw @a[tag=bw.player] [{"selector":"@s"},"\u00a77 was killed by ",{"selector":"@a[scores={bw.kill=1..}]"}]
execute unless entity @a[scores={bw.kill=1..}] run tellraw @a[tag=bw.player] [{"selector":"@s"},"\u00a77 died."]
execute as @a[scores={bw.kill=1..}] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
execute as @a[scores={bw.kill=1..}] if score @s bw.tmp.ir matches 1.. run tellraw @s [{"text":"+ ","color": "white"},{"score":{"objective": "bw.tmp.ir","name": "@s"},"color": "white"},{"text":" 铁锭","color": "white"}]
execute as @a[scores={bw.kill=1..}] if score @s bw.tmp.gd matches 1.. run tellraw @s [{"text":"+ ","color": "gold"},{"score":{"objective": "bw.tmp.gd","name": "@s"},"color": "gold"},{"text":" 金锭","color": "gold"}]
execute as @a[scores={bw.kill=1..}] if score @s bw.tmp.dm matches 1.. run tellraw @s [{"text":"+ ","color": "aqua"},{"score":{"objective": "bw.tmp.dm","name": "@s"},"color": "aqua"},{"text":" 钻石","color": "aqua"}]
execute as @a[scores={bw.kill=1..}] if score @s bw.tmp.em matches 1.. run tellraw @s [{"text":"+ ","color": "dark_green"},{"score":{"objective": "bw.tmp.em","name": "@s"},"color": "dark_green"},{"text":" 绿宝石","color": "dark_green"}]
execute as @a[scores={bw.kill=1..}] at @s run function bedwars/during/player/getitem
scoreboard players reset @a[tag=bw.player] bw.kill
