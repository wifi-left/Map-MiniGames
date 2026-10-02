execute in airworld run spawnpoint @a[team=firstoutwins] 183 -42 110

execute if score firstoutwins.state state matches 2..99 run function minecraft:firstoutwins/testfor_over
effect give @a[team=firstoutwins] haste 2 0 true
execute if score firstoutwins.state state matches 2..99 if score firstoutwins.time board matches 1.. run function minecraft:firstoutwins/countdown