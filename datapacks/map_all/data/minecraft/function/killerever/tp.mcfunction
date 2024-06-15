##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode adventure @a[gamemode=spectator,team=play.killer]
gamemode adventure @a[gamemode=spectator,team=wait.killer]
# scoreboard players add @a[gamemode=adventure,team=play.beli,tag=play.total] score 1
execute if entity @a[team=play.killer,tag=play.total] run function small_games/total/next_game
execute as @a[gamemode=adventure,team=wait.killer] run function killerever/join
execute as @a[gamemode=adventure,team=play.killer] run function killerever/join
schedule clear minecraft:killerever/summon
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{ms:1}}}}]
scoreboard players set killer.state state 0

