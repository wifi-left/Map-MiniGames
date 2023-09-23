scoreboard players add @a[team=btw.play.b,gamemode=adventure] btw.coin 100
scoreboard players add @a[team=btw.play.b,gamemode=spectator] btw.coin 50
scoreboard players add @a[team=btw.play.a] btw.coin 20


tellraw @a[team=btw.wait] ["\n\u00a7a   本回合结束。获胜队伍：B\n"]

tellraw @a[team=btw.play.a] ["\n\u00a7a   本回合结束。获胜队伍：B\n"]
tellraw @a[team=btw.play.b] ["\n\u00a7a   本回合结束。获胜队伍：B（你）\n"]
scoreboard players add btw.score.b board 1
function boatwars/roundover/waitnext
