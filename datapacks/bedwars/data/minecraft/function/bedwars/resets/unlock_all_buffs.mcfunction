##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[tag=bw.player] add bw.speed
tag @a[tag=bw.player] add bw.jump
scoreboard players set bw.armor.green board 1
scoreboard players set bw.armor.red board 1
scoreboard players set bw.armor.blue board 1
scoreboard players set bw.armor.yellow board 1

scoreboard players set bw.sharpness.green board 1
scoreboard players set bw.sharpness.red board 1
scoreboard players set bw.sharpness.blue board 1
scoreboard players set bw.sharpness.yellow board 1

scoreboard players set bw.haste.green board 1
scoreboard players set bw.haste.red board 1
scoreboard players set bw.haste.blue board 1
scoreboard players set bw.haste.yellow board 1

# 全解锁模式：锻造炉给 III 档（基地已开始产绿宝石，60 秒/个），锋利给 I 档
scoreboard players set bw.forge.green board 3
scoreboard players set bw.forge.red board 3
scoreboard players set bw.forge.blue board 3
scoreboard players set bw.forge.yellow board 3
function minecraft:bedwars/shop/forge/apply_all

# 全解锁模式一并送治疗池 I
scoreboard players set bw.heal.green board 1
scoreboard players set bw.heal.red board 1
scoreboard players set bw.heal.blue board 1
scoreboard players set bw.heal.yellow board 1
