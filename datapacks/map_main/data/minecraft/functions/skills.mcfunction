title @s actionbar ["\u00a7b\u00a7lSkills Actived"]
playsound ui.button.click player @s ~ ~ ~ 1 2 1

execute if entity @s[nbt={SelectedItem:{tag:{job:1}}}] run tag @s add skill.old
execute if entity @s[nbt={SelectedItem:{tag:{job:2}}}] run tag @s add skill.scientist
execute if entity @s[nbt={SelectedItem:{tag:{job:3}}}] run tag @s add skill.tp
execute if entity @s[nbt={SelectedItem:{tag:{job:4}}}] run tag @s add skill.creeper
execute if entity @s[nbt={SelectedItem:{tag:{job:7}}}] run tag @s add skill.7

execute as @s[tag=skill.7] at @s run function gun/job_1/shoot

# execute if entity @s[nbt={SelectedItem:{tag:{gun:1}}}] run tag @s add gun.1
effect give @s[tag=skill.scientist] speed 10 3 true
effect give @s[tag=skill.scientist] darkness 4 20 true
effect give @s[tag=skill.scientist] jump_boost 10 3 true
# 冷却
execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] slowness 5 5 true
execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] blindness 5 5 true
execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] darkness 5 5 true
execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] poison 2 1 true
# execute as @s[tag=skill.old] run effect give @a[distance=0.5..7,team=job_pvp,gamemode=!creative] poison 3 5 true

execute as @s[tag=skill.old] run title @a[distance=0.5..7,team=job_pvp,gamemode=!creative] title ["\u00a7c你被定住了。"]
execute as @s[tag=skill.old] run title @a[distance=0.5..7,team=job_pvp,gamemode=!creative] subtitle ["\u00a7e来自 ",{"selector":"@s"}," \u00a7e的范围技能"]
execute as @s[tag=skill.old] run particle minecraft:angry_villager ~ ~1 ~ 8 5 8 1 1000 force @a
execute as @s[tag=skill.tp] run particle minecraft:glow ~ ~ ~ 0 1 0 1 50
execute as @s[tag=skill.tp] run particle minecraft:glow ~ ~ ~ 0 1 0 1 50
execute as @s[tag=skill.tp] run tp @s @e[limit=1,tag=pvp.tp,sort=random]
# Creeper
execute as @s[tag=skill.creeper] run execute as @s at @s positioned 0.0 0.0 0.0 run summon marker ^ ^ ^2 {Tags:["f.tmp"]}
# execute if entity @s[team=job_pvp] anchored eyes run summon fireball ^ ^ ^1 {Tags:["f.new"],ExplosionPower:1}
execute as @s[tag=skill.creeper] run execute anchored eyes run summon minecraft:spectral_arrow ^ ^ ^1 {Glowing:1b,damage:1d,pickup:0b,Passengers:[{id:"minecraft:creeper",CustomName:'["CREEPER"]',CustomNameVisible:1b,Invulnerable:1b,Silent:1b,PersistenceRequired:1b,Glowing:1b,powered:true,ignited:true,ExplosionRadius:2b,Fuse:30s}],Tags:["f.new"]}
execute as @s[tag=skill.creeper] run execute as @e[tag=f.new] run data modify entity @s Owner set from entity @p[tag=skill.creeper] UUID
# execute as @e[tag=f.new] run data modify entity @s Motion set from entity @e[limit=1,sort=nearest,tag=f.tmp] Pos
execute as @s[tag=skill.creeper] run execute as @e[tag=f.new] run data modify entity @s Motion set from entity @e[limit=1,tag=f.tmp] Pos
tag @e[tag=f.new] remove f.new
# kill @e[type=snowball,distance=0..5,sort=nearest]
# scoreboard players reset @s fireball
kill @e[tag=f.tmp]
scoreboard players reset @s use.skill

execute as @s[tag=skill.tp] at @s run playsound minecraft:entity.enderman.hurt player @s ~ ~ ~ 10 1 0.5
execute as @s[tag=skill.old] at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 1 1 1
execute as @s[tag=skill.scientist] at @s run playsound entity.player.burp player @s ~ ~ ~ 1 1 1
execute as @s[tag=skill.creeper] at @s run playsound entity.creeper.primed player @s ~ ~ ~ 1 1 1

xp set @s[tag=skill.tp] 20 levels
xp set @s[tag=skill.old] 20 levels
xp set @s[tag=skill.scientist] 20 levels
xp set @s[tag=skill.creeper] 20 levels
# execute as @s[tag=gun.1] run function gun/1/shoot

tag @s remove skill.old
tag @s remove skill.7
tag @s remove skill.scientist
tag @s remove skill.tp
tag @s remove skill.creeper
tag @s remove gun.1
