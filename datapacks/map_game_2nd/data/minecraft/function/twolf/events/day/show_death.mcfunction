##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# say day
scoreboard players set wolf.ttime board 4
scoreboard players set wolf.event board 9
tellraw @a[tag=wolf.tip] ["\n\n\n\u00a76昨天晚上..."]
scoreboard players set wolf.deathcount board 0

# 守卫 奶穿了
execute unless score wolf.setting.milked state matches 1.. as @a[tag=wolf.killed,tag=wolf.protected,tag=wolf.rescued,gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/death/died_no

# 守卫 防住了
execute as @a[tag=wolf.killed,tag=wolf.protected,tag=!wolf.rescued,gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/tag/protected

# 救援 成功了
execute as @a[tag=wolf.killed,tag=!wolf.protected,tag=wolf.rescued,gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/tag/rescued

# 守卫守了寂寞
execute as @a[tag=!wolf.killed,tag=wolf.protected,gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/tag/protected

# 女巫 毒药
execute as @a[tag=wolf.poisoned,gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/death/died_witch

# 纵火犯 火烧
execute as @a[tag=wolf.fired,tag=!wolf.killed,gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/death/died

# 纵火犯 火烧，把狼带走咯
execute as @a[tag=wolf.fired,tag=wolf.killed,gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/death/died_fired

# 狼 杀死了
execute if score wolf.round board matches 1 as @a[tag=wolf.killed] at @s run function twolf/action/per/death/died_withsaying
execute unless score wolf.round board matches 1 as @a[tag=wolf.killed] at @s run function twolf/action/per/death/died_no

execute if score wolf.deathcount board matches ..0 run tellraw @a[tag=wolf.tip] ["\u00a7a是个平安夜。\n"]
execute if score wolf.deathcount board matches ..0 run title @a[tag=wolf.tip] subtitle ["\u00a7a是个平安夜。"]
execute if score wolf.deathcount board matches 1.. run title @a[tag=wolf.tip] subtitle ["\u00a7c昨天晚上，死了 ",{"score":{"objective": "board","name": "wolf.deathcount"},"color": "gold"},"\u00a7c 人"]
execute run title @a[tag=wolf.tip] title ["\u00a7f\u00a7l天亮了"]

tag @a remove wolf.killed
tag @a remove wolf.protected
# tag @a[tag=wolf.protected] add wolf.tagtmp
# tag @a remove wolf.lastprotected
# tag @a[tag=wolf.tagtmp] add wolf.lastprotected
tag @a remove wolf.tagtmp
tag @a remove wolf.poisoned
tag @a remove wolf.rescued
