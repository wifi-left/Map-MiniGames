# /setblock -96 153 610
execute as @a[gamemode=!creative,team=one_arrow] in overworld run spreadplayers -79 200 0 20 under 7 false @s
scoreboard players set one_arrow.state state 1
clear @a[gamemode=adventure,team=one_arrow]
function minecraft:one_arrow/resetover
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{one_arrow:tool}}}}]
team modify one_arrow nametagVisibility never