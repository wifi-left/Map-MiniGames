playsound ui.button.click player @s
execute unless score boat.state state matches 1.. run scoreboard players add boat.type board 1
execute if score boat.state state matches 1.. run tellraw @s ["\u00a7c游戏已经开始，当前无法修改。"]
# execute if score boat.type board matches 5.. run scoreboard players set boat.type board 1
# execute if score boat.type board matches 4.. run scoreboard players set boat.type board 1
execute if score boat.type board matches 6.. run scoreboard players set boat.type board 1
execute if score boat.type board matches ..1 run data modify block -12 146 -32 front_text.messages[2] set value '"\\u00a7b[冰船]"'

# execute if score chest.type board matches 2 run data merge block 347 91 22 {Textx2:'"\\u00a7b\\u00a7l[逃离神庙]"'}
execute if score boat.type board matches 2 run data modify block -12 146 -32 front_text.messages[2] set value '"\\u00a7d[猪]"'
execute if score boat.type board matches 3 run data modify block -12 146 -32 front_text.messages[2] set value '"\\u00a7c[炽足兽]"'
execute if score boat.type board matches 4 run data modify block -12 146 -32 front_text.messages[2] set value '"\\u00a77[铁人三项]"'
execute if score boat.type board matches 5 run data modify block -12 146 -32 front_text.messages[2] set value '"\\u00a7e[赛马]"'


# execute if score chest.type board matches 4 run data merge block 347 91 22 {Textx2:'"\\u00a7d\\u00a7l[五子棋]"'}