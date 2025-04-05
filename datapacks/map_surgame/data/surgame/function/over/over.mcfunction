scoreboard players set sur.state state 3
tag @a[team=play.sur] add surback
tag @a[team=wait.sur] add surback
tag @a[team=play.sur.zom] add surback
gamemode spectator @a[tag=surback]
tag @a remove surback
schedule function surgame:over/tp 5s
schedule clear surgame:enablepvp
bossbar set surgame:time name ["\u00a79生存游戏 \u00a7aSurvival Game"]
bossbar set surgame:time max 1
bossbar set surgame:time value 1
bossbar set surgame:time players @a[team=wait.sur]
tag @a remove sur.killedbyzom
