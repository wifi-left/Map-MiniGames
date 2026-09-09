function minecraft:lobby/menu_opener/detect_left
function minecraft:lobby/menu_opener/detect_right

execute as @a[tag=lobby.menu_opener.clicker] at @s run function lobby/quickplay_lists_dialog

tag @a[tag=lobby.menu_opener.clicker] remove lobby.menu_opener.clicker