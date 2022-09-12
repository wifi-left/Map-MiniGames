scoreboard players set color.state state 0

tellraw @a ["\u00a7a[I] ",{"text":"Block Believer","color":"#a7d3ff","bold": true}," \u00a7a: \u00a7b游戏结束！\n\u00a7e获胜者：",{"selector":"@a[gamemode=adventure,team=play.color]"}]

title @a[gamemode=adventure,team=play.color] title ["\u00a76You won!"]
title @a[gamemode=spectator,team=play.color] title ["\u00a7c\u00a7lGAME OVER"]
scoreboard players add @a[gamemode=adventure,team=play.color,tag=play.total] score 1
gamemode adventure @a[gamemode=spectator,team=play.color]
gamemode adventure @a[gamemode=spectator,team=wait.color]
# execute if entity @a[team=car.wait,tag=play.total] run function small_games/total/next_game
execute if entity @a[team=play.color,tag=play.total] run function small_games/total/next_game
execute as @a[gamemode=adventure,team=wait.color] run function color/join
execute as @a[gamemode=adventure,team=play.color] run function color/join
execute as @a[team=play.color] at @s run playsound entity.ender_dragon.growl player @s -32 28 33 1 1 1
kill @e[tag=colorran,type=marker]
schedule clear minecraft:color/summon