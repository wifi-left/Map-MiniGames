##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set pacman.state state 0
team join pacman @a[team=pacman.killer]
gamemode adventure @a[gamemode=spectator,team=pacman]
execute as @a[gamemode=adventure,team=pacman] run function pacman/join
execute if entity @a[team=pacman,tag=play.total] run function small_games/total/next_game
# Reset

schedule clear minecraft:pacman/summon
