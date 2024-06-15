##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add @a[team=btw.play.a,gamemode=adventure] btw.coin 150
scoreboard players add @a[team=btw.play.a,gamemode=spectator] btw.coin 75
scoreboard players add @a[team=btw.play.b] btw.coin 20

tellraw @a[team=btw.wait] ["\n\u00a7a   本回合结束。获胜队伍：A\n"]
tellraw @a[team=btw.play.a] ["\n\u00a7a   本回合结束。获胜队伍：A（你）\n"]
tellraw @a[team=btw.play.b] ["\n\u00a7a   本回合结束。获胜队伍：A\n"]
scoreboard players add btw.score.a board 1
function boatwars/roundover/waitnext

