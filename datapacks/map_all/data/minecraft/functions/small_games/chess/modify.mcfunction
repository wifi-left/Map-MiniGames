playsound ui.button.click player @s
execute unless score chess.state state matches 1.. run scoreboard players add chest.type board 1
execute if score chess.state state matches 1.. run tellraw @s ["\u00a7c游戏开始后无法修改。"]
execute if score chest.type board matches 5.. run scoreboard players set chest.type board 1
execute if score chest.type board matches ..1 run data modify block 90 126 19 front_text.messages[1] set value '"\\u00a7a\\u00a7l[五子棋]"'
# 还没做呢
execute if score chest.type board matches 2 run data modify block 90 126 19 front_text.messages[1] set value '"\\u00a7b\\u00a7l[爆炸棋(Beta)]"'
execute if score chest.type board matches 3 run data modify block 90 126 19 front_text.messages[1] set value '"\\u00a7d\\u00a7l[围棋]"'
execute if score chest.type board matches 4 run data modify block 90 126 19 front_text.messages[1] set value '"\\u00a7e\\u00a7l[黑白棋(Alpha)]"'
# execute if score chest.type board matches 2 run data modify block 90 126 19 front_text.messages[(2-1)] set value '"\\u00a7b\\u00a7l[爆炸棋(Alpha)]"'}