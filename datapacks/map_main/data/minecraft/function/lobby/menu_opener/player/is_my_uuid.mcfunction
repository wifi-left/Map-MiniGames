execute store result score UUID.0 temp run data get entity @s UUID[0]
execute store result score UUID.1 temp run data get entity @s UUID[1]
execute store result score UUID.2 temp run data get entity @s UUID[2]
execute store result score UUID.3 temp run data get entity @s UUID[3]
execute if score UUID.0 temp = UUID.target.0 temp if score UUID.1 temp = UUID.target.1 temp if score UUID.2 temp = UUID.target.2 temp if score UUID.3 temp = UUID.target.3 temp run tag @s add lobby.menu_opener.clicker