fill 6 10 -49 38 10 -81 minecraft:white_wool
title @a[team=wait.hotpot] title [{"text":"Hot Potato","color":"#5ed3ff","bold": true}]
title @a[team=wait.hotpot] subtitle ["\u00a7rBe Careful !"]
tellraw @a[team=wait.hotpot] ["\n\u00a76    游戏将在\u00a7e5\u00a76秒后开始！ ","\n"]
execute as @a[team=wait.hotpot] run spreadplayers -83 -82 0 14 under 55 false @s
execute as @a[team=wait.hotpot] at @s run playsound entity.player.levelup player @s 14 3 -44 1 1 1
team join play.hotpot @a[team=wait.hotpot]
scoreboard players set hotpot.state state 1
scoreboard players operation temp state = hotpot.num state
schedule clear minecraft:hotpotever/summon
schedule function minecraft:hotpotever/summon 5s

