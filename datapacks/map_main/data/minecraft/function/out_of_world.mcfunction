scoreboard players set no_dead board 0
execute as @s[tag=bw.player] if items entity @s container.* paper[custom_data~{type:"bw:void"}] run scoreboard players set no_dead board 1
execute as @s[tag=bw.player] if items entity @s weapon.* paper[custom_data~{type:"bw:void"}] run scoreboard players set no_dead board 1
execute if score no_dead board matches 1 run function bedwars/item/void_paper
execute if score no_dead board matches 0 run kill @s