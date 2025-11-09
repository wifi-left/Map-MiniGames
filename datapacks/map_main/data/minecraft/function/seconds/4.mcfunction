##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# setblock 121 120 60 minecraft:air
# /data get entity @s RootVehicle
# execute positioned 122 120 59 as @e[tag=lobby.car,type=minecart,distance=3..] run function lobby/car/detectdie
function o_f_tick
# execute positioned 122 120 59 as @e[tag=lobby.car,type=minecart,distance=..3] run function lobby/car/detectgo

execute if score boom.state state matches 1.. run function minecraft:bomb/second
bossbar set minecraft:boom players @a[team=boom]


tag @a[tag=bw.player] remove bw.player
tag @a[team=bw.blue] add bw.player
tag @a[team=bw.green] add bw.player
tag @a[team=bw.yellow] add bw.player
tag @a[team=bw.red] add bw.player
tag @a[team=bw.wait] add bw.player


execute if entity @a[tag=bw.player] run function minecraft:bedwars/second
execute if entity @a[tag=parkouring,team=lobby] run function minecraft:npark/second
execute if entity @a[team=parkour] run function minecraft:lpark/second
execute if entity @a[tag=mazing,team=lobby] run function minecraft:maze/second
execute if score color.state state matches 1.. run function minecraft:color/second
execute if score hotpot.state state matches 1.. run function minecraft:hotpotever/second
function minecraft:job_pvp/second
effect give @a[team=play.snow] minecraft:night_vision 20 25 true
execute if score zombie.state state matches 1.. run function minecraft:zombieever/second

execute if score killer.state state matches 1.. run function minecraft:killerever/second
execute if score duel.state state matches 1.. run function minecraft:duel/second


execute if score pillar.state state matches 1.. in airworld run function minecraft:pillar/second

execute if score sneak.state state matches 1.. run function sneak/second
