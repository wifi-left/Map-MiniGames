##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# say 3
# execute if score zombie.state state matches 1 run function zombieever/o_f_tick
execute if score zombie.state state matches 1.. run function zombieever/o_f_tick


execute if score hunger.state state matches 1.. in hungerworld run function hunger/second
execute if score hunger.state state matches 0 in hungerworld run effect give @a[team=hunger] resistance 2 25 true
effect give @a[team=golf] resistance 2 25 true

bossbar set minecraft:hungergame players @a[team=hunger]
function o_f_tick

execute if score live.state state matches 1..1 run function minecraft:live/testfor
effect give @a[team=play.live.killer] minecraft:saturation 2 25 true
effect give @a[team=play.live.runner] minecraft:saturation 2 25 true
execute if score live.set.mode live.all matches 0..0 run effect give @a[team=play.live.killer] minecraft:glowing 2 1 true
execute if score live.state state matches 2..2 run scoreboard players remove givething live.all 1
execute if score live.state state matches 2..2 run title @a[team=play.live.runner] actionbar ["\u00a7a你会在 ",{"score":{"objective":"live.all","name":"givething"},"color":"gold"},"\u00a76s \u00a7a后得到你的盔甲！"]
execute if score live.state state matches 2..2 if score givething live.all matches ..0 run function minecraft:live/givethings

execute if score live.state state matches 3..3 run scoreboard players remove gamestart live.all 1
execute if score live.state state matches 3..3 run title @a[team=play.live.runner] actionbar ["\u00a7a游戏将在 ",{"score":{"objective":"live.all","name":"gamestart"},"color":"gold"},"\u00a76s \u00a7a后正式开始！"]
execute if score live.state state matches 3..3 if score gamestart live.all matches ..0 run function minecraft:live/gamereallystart
execute if entity @a[team=wait.total] run function minecraft:small_games/total/start_second
# execute unless entity @a[team=wait.total] if entity @a[tag=play.total] run function minecraft:small_games/total/start_second
execute if score gametotal state matches 1.. run function minecraft:small_games/total/second
execute if score desk.state state matches 1.. run function minecraft:desk/second

execute if score sw.state state matches 1.. run function minecraft:cloud/second

execute if score duel.state state matches 1.. run function minecraft:duel/hftick
