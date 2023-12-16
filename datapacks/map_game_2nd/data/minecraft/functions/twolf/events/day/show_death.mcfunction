# say day
scoreboard players set wolf.ttime board 4
scoreboard players set wolf.event board 9
tellraw @a[tag=wolf.tip] ["\u00a76昨天晚上..."]
scoreboard players set wolf.deathcount board 0

# 守卫 奶穿了
execute as @a[tag=wolf.killed,tag=wolf.protected,tag=wolf.rescued,gamemode=adventure,team=wolfpeople] at @s run function twolf/action/per/death/died_no

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

execute if score wolf.deathcount board matches ..0 run tellraw @a[tag=wolf.tip] ["\u00a7a是个平安夜。"]
# tag @a remove wolf.death