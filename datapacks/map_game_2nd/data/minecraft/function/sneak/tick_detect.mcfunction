execute unless items entity @s weapon.offhand carrot_on_a_stick run clear @s carrot_on_a_stick
execute unless items entity @s weapon.offhand carrot_on_a_stick run item replace entity @s weapon.offhand with carrot_on_a_stick[custom_data={sneak:1},tooltip_display={hide_tooltip:true}]

scoreboard players set sneak.ok temp 0
execute on vehicle run scoreboard players set sneak.ok temp 1
execute as @e[tag=sneak.mount,limit=1,sort=nearest] run function minecraft:sneak/vheicle_detect
execute if score sneak.ok temp matches 0 unless entity @e[tag=sneak.mount,tag=!sneak.v.ok,sort=nearest,limit=1] run return run function minecraft:sneak/no_v_died
execute if score sneak.ok temp matches 0 run ride @s mount @e[tag=sneak.mount,tag=!sneak.v.ok,sort=nearest,limit=1]