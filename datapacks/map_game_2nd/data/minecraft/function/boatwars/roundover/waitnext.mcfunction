##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add btw.round board 1
scoreboard players set btw.state state 2
kill @e[type=#boat,tag=btw.boat]
xp set @a[team=btw.play.b] 0 points
xp set @a[team=btw.play.b] 0 levels
xp set @a[team=btw.play.a] 0 points
xp set @a[team=btw.play.a] 0 levels
execute if score btw.round board > btw.toround board run function boatwars/over/check
execute if score btw.round board > btw.toround board run return 0
tellraw @a[team=btw.wait] ["§a当前回合：",{"score":{"objective":"board","name":"btw.round"},"color":"green"},"§6 / ",{"score":{"objective":"board","name":"btw.toround"},"color":"gold"},{"translate":"\n§7当前比分：§aA [%s§a] ; §bB [%s§b]","with":[{"score":{"objective":"board","name":"btw.score.a"},"color":"gold"},{"score":{"objective":"board","name":"btw.score.b"},"color":"gold"}]},"\n§b下一局游戏将在15秒后开始。"]
tellraw @a[team=btw.play.a] ["§a当前回合：",{"score":{"objective":"board","name":"btw.round"},"color":"green"},"§6 / ",{"score":{"objective":"board","name":"btw.toround"},"color":"gold"},{"translate":"\n§7当前比分：§aA [%s§a] ; §bB [%s§b]","with":[{"score":{"objective":"board","name":"btw.score.a"},"color":"gold"},{"score":{"objective":"board","name":"btw.score.b"},"color":"gold"}]},"\n§b下一局游戏将在15秒后开始。"]
tellraw @a[team=btw.play.b] ["§a当前回合：",{"score":{"objective":"board","name":"btw.round"},"color":"green"},"§6 / ",{"score":{"objective":"board","name":"btw.toround"},"color":"gold"},{"translate":"\n§7当前比分：§aA [%s§a] ; §bB [%s§b]","with":[{"score":{"objective":"board","name":"btw.score.a"},"color":"gold"},{"score":{"objective":"board","name":"btw.score.b"},"color":"gold"}]},"\n§b下一局游戏将在15秒后开始。"]
execute as @a[team=btw.play.a,gamemode=spectator] at @s run gamemode adventure @s
execute as @a[team=btw.play.b,gamemode=spectator] at @s run gamemode adventure @s
execute as @a[team=btw.play.a] at @s run function boatwars/tpposition
execute as @a[team=btw.play.b] at @s run function boatwars/tpposition
schedule function boatwars/startround 15s

