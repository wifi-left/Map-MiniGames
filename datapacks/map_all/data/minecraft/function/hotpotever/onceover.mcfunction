##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.hotpot.k] at @s run function hotpotever/died
schedule clear minecraft:hotpotever/summon
schedule function minecraft:hotpotever/summon 5s
tellraw @a[team=wait.hotpot] ["\n§6    下一轮将在§e5§6秒后开始！ ","\n"]
execute as @a[team=play.hotpot.k] at @s run playsound entity.player.levelup player @s
scoreboard players set hotpot.state state 1
execute as @a[team=play.hotpot] at @s run playsound entity.player.levelup player @s


