function minecraft:lobby/menu_opener/detect_left
function minecraft:lobby/menu_opener/detect_right

execute as @a[tag=lobby.menu_opener.clicker] at @s run dialog show @s minecraft:spectator_menu

tag @a[tag=lobby.menu_opener.clicker] remove lobby.menu_opener.clicker