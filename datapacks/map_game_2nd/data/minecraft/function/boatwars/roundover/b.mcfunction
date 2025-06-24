##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add @a[team=btw.play.b,gamemode=adventure] btw.coin 100
scoreboard players add @a[team=btw.play.b,gamemode=spectator] btw.coin 50
scoreboard players add @a[team=btw.play.a] btw.coin 20


tellraw @a[team=btw.wait] ["\n§a   本回合结束。获胜队伍：B\n"]

tellraw @a[team=btw.play.a] ["\n§a   本回合结束。获胜队伍：B\n"]
tellraw @a[team=btw.play.b] ["\n§a   本回合结束。获胜队伍：B（你）\n"]
scoreboard players add btw.score.b board 1
function boatwars/roundover/waitnext


