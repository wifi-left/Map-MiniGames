
scoreboard players set disaster.snow.time board 30
## 速度
scoreboard players add disaster.snow.speed board 1
execute as @a[team=disaster.snow] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 0
tellraw @a[team=disaster.snow] ["\n\u00a7e\u00a7l事件\n\u00a7b速度加快\n"]

execute as @a[team=disaster.snow,gamemode=adventure] run function minecraft:disaster/snow/give_item
execute if score disaster.snow.speed board matches 50.. run scoreboard players set disaster.snow.state state 50
execute if score disaster.snow.speed board matches 50.. run scoreboard players set disaster.snow.time board -1

effect give @a[team=disaster.snow] regeneration 30 0 true
