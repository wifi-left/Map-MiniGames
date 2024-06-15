##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
bossbar remove minecraft:battle
scoreboard players set battle.state state 0
bossbar add minecraft:battle "BATTLE GAME"
bossbar set minecraft:battle color green
bossbar set minecraft:battle max 60
bossbar set minecraft:battle value 0

execute as @a[team=wait.battle,gamemode=!creative] run function battle/join
execute as @a[team=play.battle.r,gamemode=!creative] run function battle/join
execute as @a[team=play.battle.b,gamemode=!creative] run function battle/join

schedule clear battle/nextround
