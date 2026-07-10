##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
title @s actionbar ["\u00a7b\u00a7lSkills Actived"]
playsound ui.button.click player @s ~ ~ ~ 1 2 1

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:1}}}}] run tag @s add skill.old
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:"fly_arrow"}}}}] run function minecraft:job_pvp/jobs/fly_arrow
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:"fireball"}}}}] run function minecraft:job_pvp/jobs/fireball
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:2}}}}] run tag @s add skill.scientist
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:3}}}}] run tag @s add skill.tp
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:4}}}}] run tag @s add skill.creeper
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:7}}}}] run tag @s add skill.7
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:5}}}}] run tag @s add skill.5
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:6}}}}] run tag @s add skill.6
execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{job:9}}}}] run tag @s add skill.9

execute as @s[tag=skill.7] at @s run function gun/job_1/shoot
execute as @s[tag=skill.6] at @s run function gun/job_2/shoot
execute as @s[tag=skill.9] at @s run function skills/haerkala

playsound minecraft:entity.ender_dragon.flap player @s[tag=skill.5] ~ ~ ~ 0.5 1 0.5
# execute if entity @s[nbt={SelectedItem:{tag:{gun:1}}}] run tag @s add gun.1
effect give @s[tag=skill.5] levitation 4 10 true
effect give @s[tag=skill.5] slow_falling 10 1 true
#custom model data: 18

effect give @s[tag=skill.scientist] speed 10 3 true
effect give @s[tag=skill.scientist] darkness 4 20 true
effect give @s[tag=skill.scientist] jump_boost 10 3 true
# 冷却
execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] slowness 5 5 true
execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] blindness 5 5 true
execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] darkness 5 5 true
execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] poison 5 2 true
# execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] poison 5 5 true

execute as @s[tag=skill.old] run title @a[distance=0.5..7,team=job_pvp,gamemode=!creative] title ["\u00a7c你被定住了。"]
execute as @s[tag=skill.old] run title @a[distance=0.5..7,team=job_pvp,gamemode=!creative] subtitle ["\u00a7e来自 ",{"selector":"@s"}," \u00a7e的范围技能"]
execute as @s[tag=skill.old] run particle minecraft:angry_villager ~ ~1 ~ 8 5 8 1 1000 force @a
execute as @s[tag=skill.tp] run particle minecraft:glow ~ ~ ~ 0 1 0 1 50
execute as @s[tag=skill.tp] run function minecraft:job_pvp/random_tp
# Creeper
execute as @s[tag=skill.creeper] run function minecraft:job_pvp/jobs/creeper
scoreboard players reset @s use.skill

execute as @s[tag=skill.tp] at @s run playsound minecraft:entity.enderman.hurt player @s ~ ~ ~ 10 1 0.5
execute as @s[tag=skill.old] at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 1 1 1
execute as @s[tag=skill.scientist] at @s run playsound entity.player.burp player @s ~ ~ ~ 1 1 1
execute as @s[tag=skill.creeper] at @s run playsound entity.creeper.primed player @s ~ ~ ~ 1 1 1

xp set @s[tag=skill.tp] 30 levels
xp set @s[tag=skill.old] 30 levels
xp set @s[tag=skill.scientist] 25 levels
xp set @s[tag=skill.creeper] 20 levels
xp set @s[tag=skill.6] 20 levels
xp set @s[tag=skill.9] 45 levels
xp set @s[tag=skill.5] 30 levels
# execute as @s[tag=gun.1] run function gun/1/shoot

tag @s remove skill.old
tag @s remove skill.7
tag @s remove skill.6
tag @s remove skill.5
tag @s remove skill.scientist
tag @s remove skill.tp
tag @s remove skill.creeper
tag @s remove gun.1
tag @s remove skill.9


