##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function battle/testfor/countblock
execute if score battle.tmp.1 board matches 9.. run function battle/addscore/red
execute if score battle.tmp.2 board matches 9.. run function battle/addscore/blue
