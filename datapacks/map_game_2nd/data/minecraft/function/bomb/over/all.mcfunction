scoreboard players set boom.state state 7
function minecraft:bomb/over/find_highest
schedule function minecraft:bomb/over/tp 5s
kill @e[tag=bomb.sculk,type=marker]
schedule clear minecraft:bomb/round/cdover
schedule clear minecraft:bomb/round/next_person
bossbar set boom name '\u00a7a拆弹达人 \u00a78| \u00a7e游戏结束，即将重置'
