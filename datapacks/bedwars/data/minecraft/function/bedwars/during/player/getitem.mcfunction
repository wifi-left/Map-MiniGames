##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function fix:bw/getitem

execute if score @s bw.tmp.ir matches 1.. run scoreboard players remove @s bw.tmp.ir 1
execute if score @s bw.tmp.dm matches 1.. run scoreboard players remove @s bw.tmp.dm 1
execute if score @s bw.tmp.gd matches 1.. run scoreboard players remove @s bw.tmp.gd 1
execute if score @s bw.tmp.em matches 1.. run scoreboard players remove @s bw.tmp.em 1

execute if score @s bw.tmp.ir matches 1.. run function bedwars/during/player/getitem
execute if score @s bw.tmp.dm matches 1.. run function bedwars/during/player/getitem
execute if score @s bw.tmp.gd matches 1.. run function bedwars/during/player/getitem
execute if score @s bw.tmp.em matches 1.. run function bedwars/during/player/getitem
