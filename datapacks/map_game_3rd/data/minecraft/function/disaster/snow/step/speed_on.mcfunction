
scoreboard players add disaster.snow.state state 1
scoreboard players set disaster.snow.time board 15
## 速度
scoreboard players add disaster.snow.speed board 1
execute as @a[team=disaster.snow] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 0
tellraw @a[team=disaster.snow] ["\n\u00a7e\u00a7l事件\n\u00a7b速度加快\n"]

execute as @a[team=disaster.snow,gamemode=adventure] run function minecraft:disaster/snow/give_item

effect give @a[team=disaster.snow] regeneration 15 0 true
