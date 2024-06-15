##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
spawnpoint @a[team=play.zombie] 671 -18 -51
execute as @e[tag=zombie.villagers] at @s run function zombieever/villagers/displayhealth
execute as @e[tag=zombie.villager] at @s run kill @e[type=zombie_villager,distance=0..1]

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{coin:1b}}}}] at @s run data merge entity @s {CustomName:'"\\u00a7e\\u00a7lZombie Coin"',CustomNameVisible:1b}

tag @e[type=slime] add pve.zombie
tag @e[type=magma_cube] add pve.zombie
scoreboard players set zombie.count tick 0
execute as @e[tag=pve.zombie,tag=!pve.root] run scoreboard players add zombie.count tick 1
execute store result bossbar zombie:zombiecount value run scoreboard players get zombie.count tick
execute if score zombie.state state matches 1 run bossbar set zombie:zombiecount name ["\u00a7b任务 \u00a7a[",{"selector":"@e[tag=pve.title,type=marker,limit=1]","color":"yellow"},"\u00a7a] \u00a7e剩余僵尸数量：",{"score":{"name": "zombie.count","objective": "tick"},"color":"red"}]
execute if score zombie.state state matches 1 if score zombie.count tick matches ..0 run function zombieever/thisroundover
execute if score zombie.count tick matches ..6 run effect give @e[tag=pve.zombie] glowing 2 1 true

# Display Info for player.
# execute as @a[team=play.zombie,gamemode=adventure] at @s run kill @e[type=experience_orb,distance=0..4]
kill @e[type=minecraft:trident,nbt={inGround:1b}]
# Player
scoreboard players set tmp.count tick 0
execute as @a[team=play.zombie,gamemode=adventure] run scoreboard players add tmp.count tick 1
# execute store result bossbar zombie:zombiecount value run scoreboard players get zombie.count tick
execute if score zombie.state state matches 1..2 if score tmp.count tick matches ..0 run function zombieever/over/lose_player
# execute if score zombie.state state matches 1 as @e[tag=pve.zombie,tag=pve.gunzombie] at @s run function gun/zombiegun/shoot

# execute store result bossbar zombie:zombiecount value run scoreboard players get zombie.count tick
# execute if score zombie.type board matches 1 if score zombie.state state matches 1 if score tmp.count tick matches ..0 run function zombieever/over/lose_villager
kill @e[type=vex]

execute if score zombie.round board matches 28 run function zombieever/tasks/detect/boss
