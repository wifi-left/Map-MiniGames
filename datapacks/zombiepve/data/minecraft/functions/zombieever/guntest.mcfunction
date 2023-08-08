execute store result score tmp board run data get entity @s SelectedItem.tag.hp
execute if score @s level >= tmp board run tag @s add success
execute as @s[tag=success] run scoreboard players operation @s bw.tmp.em = tmp board
execute as @s[tag=success] run function zombieever/removelevel/add