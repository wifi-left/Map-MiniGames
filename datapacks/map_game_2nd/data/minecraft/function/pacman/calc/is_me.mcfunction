execute store result score pacman.tmp board run clear @s sunflower 0
execute if score pacman.max board = pacman.tmp board run tag @s add pacman.win