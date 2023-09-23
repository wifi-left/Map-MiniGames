scoreboard players add btw.round board 1
scoreboard players set btw.state state 2
kill @e[type=boat,tag=btw.boat]
xp set @a[team=btw.play.b] 0 points
xp set @a[team=btw.play.b] 0 levels
xp set @a[team=btw.play.a] 0 points
xp set @a[team=btw.play.a] 0 levels
execute if score btw.round board > btw.toround board run function boatwars/over/check
execute if score btw.round board > btw.toround board run return 0
tellraw @a[team=btw.wait] ["\u00a7a当前回合：",{"score":{"objective": "board","name": "btw.round"},"color":"green"},"\u00a76 / ",{"score":{"objective": "board","name": "btw.toround"},"color":"gold"},{"translate":"\n\u00a77当前比分：\u00a7aA [%s\u00a7a] ; \u00a7bB [%s\u00a7b]","with": [{"score":{"objective": "board","name": "btw.score.a"},"color":"gold"},{"score":{"objective": "board","name": "btw.score.b"},"color":"gold"}]},"\n\u00a7b下一局游戏将在15秒后开始。"]
tellraw @a[team=btw.play.a] ["\u00a7a当前回合：",{"score":{"objective": "board","name": "btw.round"},"color":"green"},"\u00a76 / ",{"score":{"objective": "board","name": "btw.toround"},"color":"gold"},{"translate":"\n\u00a77当前比分：\u00a7aA [%s\u00a7a] ; \u00a7bB [%s\u00a7b]","with": [{"score":{"objective": "board","name": "btw.score.a"},"color":"gold"},{"score":{"objective": "board","name": "btw.score.b"},"color":"gold"}]},"\n\u00a7b下一局游戏将在15秒后开始。"]
tellraw @a[team=btw.play.b] ["\u00a7a当前回合：",{"score":{"objective": "board","name": "btw.round"},"color":"green"},"\u00a76 / ",{"score":{"objective": "board","name": "btw.toround"},"color":"gold"},{"translate":"\n\u00a77当前比分：\u00a7aA [%s\u00a7a] ; \u00a7bB [%s\u00a7b]","with": [{"score":{"objective": "board","name": "btw.score.a"},"color":"gold"},{"score":{"objective": "board","name": "btw.score.b"},"color":"gold"}]},"\n\u00a7b下一局游戏将在15秒后开始。"]
execute as @a[team=btw.play.a,gamemode=spectator] at @s run gamemode adventure @s
execute as @a[team=btw.play.b,gamemode=spectator] at @s run gamemode adventure @s
execute as @a[team=btw.play.a] at @s run function boatwars/tpposition
execute as @a[team=btw.play.b] at @s run function boatwars/tpposition
schedule function boatwars/startround 15s