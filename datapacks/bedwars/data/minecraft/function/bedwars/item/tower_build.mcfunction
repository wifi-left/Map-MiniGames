# 速建防御塔：每 tick 放 5~6 个方块，整座塔 0.9 秒搭完（执行者 = 塔标记）
scoreboard players add @s board 1

# 音效：每 4 tick 一声鸡下蛋 = 每秒 5 次
execute if score @s board matches 2 run playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 1 1
execute if score @s board matches 6 run playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 1 1
execute if score @s board matches 10 run playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 1 1
execute if score @s board matches 14 run playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 1 1

# 摆放：朝向 + 队伍配色分发（paint 里那批方块会按当前 tick 决定放哪些）
execute if score @s board matches ..17 run function minecraft:bedwars/item/tower/paint

# 完工
execute if score @s board matches 18 at @s run function minecraft:bedwars/item/tower_done
