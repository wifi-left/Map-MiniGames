##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set play.duel.player tick 0
scoreboard players set play.duel.yellow.player tick 0
scoreboard players set play.duel.blue.player tick 0
execute as @a[team=play.duel.yellow,gamemode=adventure] run scoreboard players add play.duel.player tick 1
execute as @a[team=play.duel.yellow,gamemode=adventure] run scoreboard players add play.duel.yellow.player tick 1
execute as @a[team=play.duel.blue,gamemode=adventure] run scoreboard players add play.duel.blue.player tick 1
execute as @a[team=play.duel.blue,gamemode=adventure] run scoreboard players add play.duel.player tick 1
execute if score duel.state state matches 1.. if score score.yellow tick matches 5.. run function minecraft:duel/over/yellow
execute if score duel.state state matches 1.. if score score.blue tick matches 5.. run function minecraft:duel/over/blue
execute if score duel.state state matches 1.. if score play.duel.player tick matches ..1 run function minecraft:duel/over
execute if score duel.state state matches 1.. if score play.duel.blue.player tick matches ..0 run function minecraft:duel/over
execute if score duel.state state matches 1.. if score play.duel.yellow.player tick matches ..0 run function minecraft:duel/over
effect give @a[team=play.duel] minecraft:night_vision 20 25 true
spawnpoint @a[team=play.duel.blue] -105 59 -115
spawnpoint @a[team=play.duel.yellow] -105 59 -115
