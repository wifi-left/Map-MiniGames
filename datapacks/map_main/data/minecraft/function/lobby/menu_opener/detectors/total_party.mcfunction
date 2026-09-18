function minecraft:lobby/menu_opener/detect_left
function minecraft:lobby/menu_opener/detect_right

execute as @a[tag=lobby.menu_opener.clicker] at @s run function small_games/total/join
tag @a[tag=lobby.menu_opener.clicker] remove lobby.menu_opener.clicker