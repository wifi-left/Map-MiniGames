scoreboard players set t_says.state state 1
scoreboard players set t_says.say board 0
execute if score t_says.scene board matches 1 run function minecraft:t_says/scene/start/jump_from_platform
execute if score t_says.scene board matches 8 run function minecraft:t_says/scene/start/jump_from_platform
execute if score t_says.scene board matches 2..7 run function minecraft:t_says/scene/start/short
execute if score t_says.scene board matches 9 run function minecraft:t_says/scene/start/parkour_to_the_end
execute if score t_says.scene board matches 10..19 run function minecraft:t_says/scene/start/make_item
execute if score t_says.scene board matches 20 run function minecraft:t_says/scene/start/hide_arrow
execute as @a[team=t_says] at @s run playsound minecraft:block.note_block.bit player @s ~ ~ ~ 1 2 1