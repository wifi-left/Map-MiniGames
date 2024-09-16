# 2队模式除人
execute if score bw.mode state matches 4..7 run tellraw @a[team=bw.wait,scores={bw.team=3..4}] ["\u00a7c由于当前为2队模式，您选择的队伍无效！您将会被随机分配。"]
execute if score bw.mode state matches 4..7 run scoreboard players reset @a[team=bw.wait,scores={bw.team=3..4}] bw.team

execute as @a[team=bw.wait,scores={bw.team=1}] run team join bw.red @s
execute as @a[team=bw.wait,scores={bw.team=2}] run team join bw.blue @s
execute as @a[team=bw.wait,scores={bw.team=3}] run team join bw.yellow @s
execute as @a[team=bw.wait,scores={bw.team=4}] run team join bw.green @s