##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[team=wait.battle] add battle.sel
tag @a[team=play.battle.r] add battle.sel
tag @a[team=play.battle.b] add battle.sel
scoreboard players set battle.state state 5
schedule function battle/over/tp 5s
schedule clear battle/nextround
gamemode spectator @a[tag=battle.sel]
tag @a remove battle.sel
