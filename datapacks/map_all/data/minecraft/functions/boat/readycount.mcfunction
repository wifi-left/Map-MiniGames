scoreboard players remove boat.start board 1
execute if score boat.start board matches 1.. run tellraw @a[team=boat] ["\u00a7e游戏即将在",{"score":{"name": "boat.start","objective": "board"},"color":"red"},"\u00a7e秒后开始。"]
execute if score boat.start board matches 1.. run title @a[team=boat] title ["\u00a79\u00a7l冰船游戏 Ice Boat Game"]
execute if score boat.start board matches 1.. run title @a[team=boat] subtitle ["\u00a7e游戏即将在",{"score":{"name": "boat.start","objective": "board"},"color":"red"},"\u00a7e秒后开始"]
execute as @a[team=boat] at @s run playsound minecraft:block.note_block.pling player @s -62 160 -98 5 1 1

execute if score boat.start board matches ..0 run function boat/startgo
clear @a[team=boat] carrot_on_a_stick{boatItem:3b}
# clear @a[team=boat] carrot_on_a_stick{boatItem:2b}
# clear @a[team=boat] carrot_on_a_stick{boatItem:1b}

# execute as @e[tag=boat,team=boat,nbt={NoAI:1b}] at @s run data merge entity @s {NoAI:0b}