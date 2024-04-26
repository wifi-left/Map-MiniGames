playsound ui.button.click player @s
execute unless score zombie.state state matches 1.. run scoreboard players add zombie.mode board 1
execute if score zombie.state state matches 1.. run tellraw @s ["\u00a7c游戏已经开始，当前无法修改。"]
execute if score zombie.mode board matches 4.. run scoreboard players set zombie.mode board 1
execute if score zombie.mode board matches ..1 run data modify block 347 76 21 front_text.messages[1] set value '"\\u00a7d[剧情模式]"'
execute if score zombie.mode board matches ..1 run data modify block 347 76 21 front_text.messages[2] set value '"\\u00a7e无限复活"'
# execute if score chest.type board matches 2 run data modify block 347 76 22 front_text.messages[(2-1)] set value '"\\u00a7b\\u00a7l[逃离神庙]"'}
execute if score zombie.mode board matches 2 run data modify block 347 76 21 front_text.messages[1] set value '"\\u00a7a[普通模式]"'
execute if score zombie.mode board matches 2 run data modify block 347 76 21 front_text.messages[2] set value '"\\u00a7e在每一个进度完成后复活"'
execute if score zombie.mode board matches 3 run data modify block 347 76 21 front_text.messages[1] set value '"\\u00a7c[高手模式]"'
execute if score zombie.mode board matches 3 run data modify block 347 76 21 front_text.messages[2] set value '"\\u00a7e您无法复活"'
# execute if score chest.type board matches 4 run data modify block 347 76 22 front_text.messages[(2-1)] set value '"\\u00a7d\\u00a7l[五子棋]"'}