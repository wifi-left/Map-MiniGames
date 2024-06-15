##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add zombie.round board 1
scoreboard players reset * zombie.villager.click
tellraw @a[team=play.zombie] ["\u00a77\u00a7o进度推进 [ID ",{"score":{"name": "zombie.round","objective": "board"},"color":"green","italic": true},"\u00a77\u00a7o]"]
# Total

execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}
execute if score zombie.round board matches 12 if entity @e[tag=pve.zombie,tag=pve.root] run function zombieever/rounds/11
execute if score zombie.round board matches 12 unless entity @e[tag=pve.zombie,tag=pve.root] run function zombieever/talks/crazyrabbit/win

## 下一把开始（开始检测）
# scoreboard players set zombie.state state 1
execute if score zombie.round board matches 6..9 run tellraw @a[team=play.zombie] ["\n\u00a7a下一波将在10s后来临。\n"]
execute if score zombie.round board matches 5 run scoreboard players set zombie.round board 4
execute if score zombie.round board matches 6 run schedule function zombieever/rounds/6 10s
execute if score zombie.round board matches 7 run schedule function zombieever/rounds/7 10s
execute if score zombie.round board matches 8 run schedule function zombieever/rounds/8 10s
execute if score zombie.round board matches 9 run schedule function zombieever/rounds/9 10s
execute if score zombie.round board matches 10 run schedule function zombieever/talks/rescue_village/win 5s
execute if score zombie.round board matches 14 run function zombieever/tasks/find_keys_final
execute if score zombie.round board matches 18..22 run tellraw @a[team=play.zombie] ["\n\u00a7a下一波将在10s后来临。\n"]
execute if score zombie.round board matches 18..22 run schedule function zombieever/rounds/stronghold 10s
execute if score zombie.round board matches 23 run function zombieever/door/open_cave_loot_out
execute if score zombie.round board matches 24 run function zombieever/rounds/lava
execute if score zombie.round board matches 25 run function zombieever/door/stronghold_tpup
execute if score zombie.round board matches 27 if entity @e[tag=pve.zombie,tag=pve.root] run function zombieever/rounds/strongholdboss_xb
# execute if score zombie.round board matches 28 if entity @e[tag=pve.zombie,tag=pve.root] run function zombieever/rounds/strongholdboss_xb
execute if score zombie.round board matches 27 run function zombieever/door/open_cave_wall_boss

## 结束
# execute if score zombie.round board matches 23.. as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon wither_skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b}
# execute if score zombie.round board matches 23.. run function zombieever/over/win
execute if score zombie.round board matches 29.. run function zombieever/over/win

