execute as @a if items entity @s hotbar.* *[custom_data~{gun_data:{is_gun:true}}] in overworld run function gun:player/gun_status
execute as @a if items entity @s weapon.offhand *[custom_data~{gun_data:{is_gun:true}}] in overworld run function gun:player/offhand_active

execute as @e[tag=bettergun.line,type=marker] at @s run function gun:bullet/main_move