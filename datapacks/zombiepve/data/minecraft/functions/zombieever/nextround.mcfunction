scoreboard players add zombie.round board 1
scoreboard players reset * zombie.villager.click
# Total
execute as @e[tag=pve.zombie] run data merge entity @s {PersistenceRequired:1b,ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f]}
execute if score zombie.round board matches 12 if entity @e[tag=pve.zombie,tag=pve.root] run function zombieever/rounds/11
execute if score zombie.round board matches 12 unless entity @e[tag=pve.zombie,tag=pve.root] run function zombieever/talks/crazyrabbit/win

## 下一把开始（开始检测）
# scoreboard players set zombie.state state 1
execute if score zombie.round board matches 5 run scoreboard players set zombie.round board 4
execute if score zombie.round board matches 6 run function zombieever/rounds/6
execute if score zombie.round board matches 7 run function zombieever/rounds/7
execute if score zombie.round board matches 8 run function zombieever/rounds/8
execute if score zombie.round board matches 9 run function zombieever/rounds/9
execute if score zombie.round board matches 10 run function zombieever/talks/rescue_village/win
execute if score zombie.round board matches 14 run function zombieever/tasks/find_keys_final
## 结束
# execute if score zombie.round board matches 23.. as @e[tag=zombie.spawn.now,sort=random,limit=2] at @s run summon wither_skeleton ~ ~ ~ {Tags:["pve.zombie"],DeathLootTable:"",PersistenceRequired:1b}
# execute if score zombie.round board matches 23.. run function zombieever/over/win