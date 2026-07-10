scoreboard players add desk.russia.random.animation tick 1
execute if score desk.russia.random.animation tick matches 8.. run scoreboard players remove desk.russia.random.rounds tick 1
execute if score desk.russia.random.animation tick matches 8.. run scoreboard players set desk.russia.random.animation tick 0
execute store result entity @e[tag=desk.russia.pointer,limit=1] ItemRotation byte 1 run scoreboard players get desk.russia.random.animation tick
execute if score desk.russia.random.rounds tick matches ..0 if score desk.russia.random.animation tick = desk.russia.random.target tick as @a[tag=desk.russia.nowround] run function minecraft:desk/russia/random_ani_over