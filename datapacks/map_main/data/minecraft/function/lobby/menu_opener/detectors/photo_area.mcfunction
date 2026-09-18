function minecraft:lobby/menu_opener/detect_left
function minecraft:lobby/menu_opener/detect_right

execute as @a[tag=lobby.menu_opener.clicker] at @s run tp @s 264 116 -45 180 0
execute as @a[tag=lobby.menu_opener.clicker] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1
tag @a[tag=lobby.menu_opener.clicker] remove lobby.menu_opener.clicker