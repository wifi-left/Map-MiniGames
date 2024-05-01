##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[scores={zombie.hurt=1..},team=play.zombie] run function zombieever/damagetocoin
execute as @a[team=play.zombie,x=670,y=-19,z=-52,dx=2,dy=2,dz=2,gamemode=adventure] run function zombieever/died
execute as @e[tag=pve.zombie] at @s as @s[y=40,dy=10] run tp @s ~ ~-1 ~

#zombie.villager.click
function zombieever/talks/trigger
execute if score zombie.round board matches 13 run function zombieever/tasks/detect/findkey
execute if score zombie.round board matches 16 run function zombieever/tasks/detect/npc
execute if score zombie.round board matches 17 run function zombieever/tasks/detect/stronghold_open

xp add @a[team=play.zombie,level=..200,gamemode=adventure] 1 points
execute as @a[team=play.zombie,level=..200,gamemode=adventure] run xp add @s[nbt={Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{hpdouble:true}}}]}] 5 points
execute as @a[team=play.zombie,level=30..200,gamemode=adventure] run xp add @s[nbt={Inventory:[{id:"minecraft:paper",components:{"minecraft:custom_data":{hpdouble:true}}}]}] 5 points
