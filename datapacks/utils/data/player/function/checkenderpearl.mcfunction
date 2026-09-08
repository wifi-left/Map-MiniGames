execute store result score temp.ender.o.0 temp run data get entity @s Owner[0]
execute store result score temp.ender.o.1 temp run data get entity @s Owner[1]
execute store result score temp.ender.o.2 temp run data get entity @s Owner[2]
execute store result score temp.ender.o.3 temp run data get entity @s Owner[3]

execute unless score temp.ender.p.0 temp = temp.ender.o.0 temp run return 0
execute unless score temp.ender.p.1 temp = temp.ender.o.1 temp run return 0
execute unless score temp.ender.p.2 temp = temp.ender.o.2 temp run return 0
execute unless score temp.ender.p.3 temp = temp.ender.o.3 temp run return 0
return 1