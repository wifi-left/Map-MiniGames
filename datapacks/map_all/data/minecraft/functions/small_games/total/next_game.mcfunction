##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @a[tag=play.total]
# title @a[tag=play.total] title ["\u00a7b\u00a7lGame Total"]
# title @a[tag=play.total] title ["\u00a7a\u00a7lGame Total"]

title @a[tag=play.total] actionbar ["\u00a7e\u00a7l即将选择下一个小游戏"]
clear @a[tag=play.total]
effect clear @a[tag=play.total]
tp @a[tag=play.total] 213 97 157 180 0
team join play.total @a[tag=play.total]
execute as @a[tag=play.total] at @s run playsound entity.experience_orb.pickup player @s
schedule function small_games/total/get_random_game 5s
