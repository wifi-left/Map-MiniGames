tp @s 214.0 80 138.0 -90 0
team join wait.total @s
scoreboard players set wait.player tick 0 
execute as @a[team=wait.total,gamemode=adventure] run scoreboard players add wait.player tick 1
tellraw @a[team=!wait.total] ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 已加入 ",{"text":"小游戏合集","color":"#afd3ff","bold": true}," \u00a77!"]
tellraw @a[team=wait.total] ["\u00a76 > ",{"selector":"@s"},"\u00a72 已加入。 \u00a7b(",{"score":{"objective": "tick","name": "wait.player"},"color": "yellow"}," \u00a7ePeople\u00a7b)"]
execute if score gametotal state matches 1.. as @s run function small_games/total/spec