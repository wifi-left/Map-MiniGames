scoreboard players add pillar.2second tick 1
execute if score pillar.2second tick matches 2 run function minecraft:pillar/give_item
execute if score pillar.2second tick matches 2 run scoreboard players set pillar.2second tick 0