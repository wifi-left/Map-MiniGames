##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

# data modify entity @e[type=fireball,limit=1,sort=nearest] Motion set from entity @s Motion
# data modify entity @e[type=fireball,limit=1,sort=nearest] power set from entity @s Motion
# kill @s
execute as @s at @s in overworld positioned 0.0 0.0 0.0 run summon marker ^ ^ ^0.25 {Tags:["f.tmp"]}
execute if entity @s[team=job_pvp] anchored eyes run summon fireball ^ ^ ^1 {Tags:["f.new"],ExplosionPower:1,acceleration_power:0.4d}
execute unless entity @s[team=job_pvp] anchored eyes run summon fireball ^ ^ ^1 {Tags:["f.new"],ExplosionPower:1,acceleration_power:0.4d}

execute as @e[tag=f.new] run data modify entity @s Owner set from entity @e[limit=1,sort=nearest,type=snowball,distance=..5] Owner
# execute as @e[tag=f.new] run data modify entity @s Motion set from entity @e[limit=1,sort=nearest,tag=f.tmp] Pos

execute as @e[tag=f.new] run data modify entity @s Motion set from entity @e[limit=1,tag=f.tmp] Pos
tag @e[tag=f.new] remove f.new
kill @e[type=snowball,distance=..5,sort=nearest]
scoreboard players reset @s fireball
kill @e[tag=f.tmp]
# say 1

