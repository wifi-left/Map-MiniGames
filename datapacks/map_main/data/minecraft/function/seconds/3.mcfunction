##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# say 3
# execute if score zombie.state state matches 1 run function zombieever/o_f_tick
execute if score zombie.state state matches 1.. run function zombieever/o_f_tick


execute if score hunger.state state matches 1.. in airworld run function hunger/second
execute if score hunger.state state matches 0 in airworld run effect give @a[team=hunger] resistance 2 25 true
effect give @a[team=golf] resistance 2 25 true

bossbar set minecraft:hungergame players @a[team=hunger]
function o_f_tick

execute if score live.state state matches 1.. run function minecraft:live/second
execute if entity @a[team=wait.total] run function minecraft:small_games/total/start_second
# execute unless entity @a[team=wait.total] if entity @a[tag=play.total] run function minecraft:small_games/total/start_second
execute if score gametotal state matches 1.. run function minecraft:small_games/total/second
execute if score desk.state state matches 1.. run function minecraft:desk/second

execute if score sw.state state matches 1.. run function minecraft:cloud/second

execute if score duel.state state matches 1.. run function minecraft:duel/hftick
execute if score car.state state matches 1.. run function minecraft:car_race/second
execute if score endwolf.state state matches 1.. run function endless_wolf/second


effect give @a[team=blaze.wait] resistance 2 25 true
execute if score blaze.state state matches 1.. in killerworld run function minecraft:blaze/second


execute if score sheepwars.state state matches 1.. in airworld run function minecraft:sheepwars/second
