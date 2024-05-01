##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score snow.state state matches 1.. run function minecraft:snow/testfor
effect give @a[team=wait.snow] resistance 2 25 true
effect give @a[team=play.snow] resistance 2 25 true

execute if score snow.state state matches 2.. if score snow.tntrun.start tick matches ..0 run function minecraft:snow/tntrun/startfall
execute if score snow.state state matches 2.. run scoreboard players remove snow.tntrun.start tick 1
execute if score snow.state state matches 2.. run title @a[team=play.snow] actionbar ["\u00a7b方块即将在 ",{"score":{"objective": "tick","name":"snow.tntrun.start"},"color":"green"},"\u00a7a seconds 后开始掉落 \u00a7b !"]

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


execute unless entity @a[team=job_pvp] run kill @e[tag=pvp.car]
