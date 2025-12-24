execute store result score temp.x1 temp run data get entity @s Pos[0] 10
execute store result score temp.y1 temp run data get entity @s Pos[1] 10
execute store result score temp.z1 temp run data get entity @s Pos[2] 10

scoreboard players operation temp.x1 temp -= temp.x temp
scoreboard players operation temp.y1 temp -= temp.y temp
scoreboard players operation temp.z1 temp -= temp.z temp
#  +- 4
# tellraw @a [{score:{name:"temp.x1",objective:temp}}," ",{score:{name:"temp.y1",objective:temp}}," ",{score:{name:"temp.z1",objective:temp}}," "]

execute if score temp.x1 temp matches -4..4 if score temp.y1 temp matches -18..0 if score temp.z1 temp matches -4..4 run return 1
return fail