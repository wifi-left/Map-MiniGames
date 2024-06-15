##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add score.blue tick 1
tellraw @a[team=play.duel.blue] [{"selector":"@s"},"\u00a79 给蓝队加了一分！"]
tellraw @a[team=play.duel.yellow] [{"selector":"@s"},"\u00a79 给蓝队加了一分！"]
function duel/score/flush
