##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
spawnpoint @a[team=play.killer] 235 56 33
execute as @a[team=play.killer,x=235.0,y=56.0,z=33.0,distance=0..2,gamemode=adventure] at @s run function killerever/died
tag @a[team=play.killer,nbt={Inventory:[{id:"minecraft:enchanted_book",Slot:-106b}]}] add killer.sb
tag @a[team=play.killer,nbt={Inventory:[{id:"minecraft:rabbit_stew",Slot:-106b}]}] add killer.te
tag @a[team=play.killer,nbt={Inventory:[{id:"minecraft:mushroom_stew",Slot:-106b}]}] add killer.gis

# execute as @e[tag=killer.bow] at @s run function
execute as @a[team=play.killer,tag=killer.killer] at @s run function killerever/action/check_if_get_bow
execute as @a[team=play.killer,tag=killer.runner,tag=!killer.saver] at @s run function killerever/action/check_bow

tag @a[scores={eat.goldapple=1..}] add killer.ga
tag @a[scores={eat.glow=1..}] add killer.glow

effect clear @a[tag=killer.glow] resistance
effect clear @a[tag=killer.ga] resistance

effect give @a[tag=killer.glow] speed 10 2 true
effect give @a[tag=killer.glow] jump_boost 10 2 true

effect give @a[tag=killer.ga] resistance 10 25 true

effect give @a[tag=killer.gis] levitation 2 25 true
effect give @a[tag=killer.gis] slow_falling 7 25 true

execute as @a[tag=killer.te] at @s run effect give @a[team=play.killer,gamemode=adventure,distance=1..6] levitation 2 25 true
execute as @a[tag=killer.te] at @s run effect give @a[team=play.killer,gamemode=adventure,distance=1..6] slow_falling 7 25 true

execute as @a[tag=killer.sb] at @s run effect give @a[team=play.killer,gamemode=adventure,distance=1..6] slowness 5 25 true
execute as @a[tag=killer.sb] at @s run effect give @a[team=play.killer,gamemode=adventure,distance=1..6] blindness 5 25 true
execute as @a[tag=killer.sb] at @s run effect give @a[team=play.killer,gamemode=adventure,distance=1..6] darkness 5 25 true
execute as @a[tag=killer.sb] at @s run effect give @a[team=play.killer,gamemode=adventure,distance=1..6] slow_falling 5 128 true

item replace entity @a[tag=killer.sb] weapon.offhand with air
item replace entity @a[tag=killer.te] weapon.offhand with air
item replace entity @a[tag=killer.gis] weapon.offhand with air

tag @a remove killer.sb
tag @a remove killer.te
tag @a remove killer.gis
tag @a remove killer.ga
tag @a remove killer.glow
## 物品F
# minecraft:slime_ball
# minecraft:turtle_egg
# minecraft:glow_ink_sac v
## 计分板
# minecraft:enchanted_golden_apple v
# minecraft:glow_berries v
