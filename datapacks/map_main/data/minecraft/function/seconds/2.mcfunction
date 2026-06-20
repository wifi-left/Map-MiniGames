##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# say 2
execute if score disaster.snow.state state matches 1.. in airworld run function minecraft:disaster/snow/1_4_tick

execute if score hide2.state state matches 1.. run function minecraft:hide2/second

execute if score tnt.state state matches 1.. run function minecraft:tntwars/second
tag @a[tag=wolf.tip] remove wolf.tip
tag @a[team=wolfpeople] add wolf.tip
tag @a[team=wait.wolfpeople] add wolf.tip
bossbar set minecraft:wolfkiller players
bossbar set minecraft:wolfkiller players @a[tag=wolf.tip]
bossbar set zombie:zombiecount players
bossbar set zombie:zombiecount players @a[team=play.zombie]

execute if entity @a[team=dropper] in dropperworld run function dropper/second

execute if score chess.state state matches 1.. run function small_games/chess/second

execute if score hide.state state matches 1.. run function hideseek/second

effect give @a[team=lobby,scores={health=..19}] minecraft:instant_health 1 5 true
effect give @a minecraft:saturation 1 25 true
function o_f_tick

execute in killerworld if score twolf.state state matches 1.. run function minecraft:twolf/second

effect give @a[team=wait.wolfpeople] resistance 2 25 true
effect give @a[team=wolfpeople] resistance 2 25 true

execute if score t_says.state state matches 1.. run function minecraft:t_says/second


execute if score stronghold.state state matches 1.. in lobby run function stronghold/second
execute if score stronghold.state state matches 0 run effect give @a[team=stronghold] resistance 2 25 true

execute if score random_parkour.state state matches 1.. in parkourworld run function random_parkour/second
execute if score ballgame.state state matches 1.. in overworld run function minecraft:ballgame/second
execute if score fishing.state state matches 1.. in overworld run function minecraft:fishing/second
execute if score one_arrow.state state matches 1.. in overworld run function minecraft:one_arrow/second
execute if score elytra.state state matches 1.. in parkourworld run function minecraft:elytra/second
execute if score mutouren.state state matches 1.. in parkourworld run function minecraft:mutouren/second
