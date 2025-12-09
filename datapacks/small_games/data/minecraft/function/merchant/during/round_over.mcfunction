tellraw @a[team=deskgame] ["\u00a7c本轮结束。"]
function minecraft:merchant/during/testfor_over
execute if score desk.state state matches 1..99 run function minecraft:merchant/during/new_round