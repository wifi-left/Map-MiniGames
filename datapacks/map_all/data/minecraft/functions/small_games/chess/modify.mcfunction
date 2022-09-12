playsound ui.button.click player @s
execute unless score chess.state state matches 1.. run scoreboard players add chest.type board 1
execute if score chess.state state matches 1.. run tellraw @s ["\u00a7c游戏开始后无法修改。"]
execute if score chest.type board matches 2.. run scoreboard players set chest.type board 1
execute if score chest.type board matches ..1 run data merge block 90 126 19 {Text2:'"\\u00a7a\\u00a7l[五子棋]"'}
# 还没做呢
execute if score chest.type board matches 2 run data merge block 90 126 19 {Text2:'"\\u00a7b\\u00a7l[中国象棋]"'}