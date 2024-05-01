##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
playsound ui.button.click player @s
execute unless score zombie.state state matches 1.. run scoreboard players add zombie.type board 1
execute if score zombie.state state matches 1.. run tellraw @s ["\u00a7c游戏已经开始，当前无法修改。"]
execute if score zombie.type board matches 5.. run scoreboard players set zombie.type board 1
execute if score zombie.type board matches 3.. run scoreboard players set zombie.type board 1
execute if score zombie.type board matches ..1 run data modify block 347 76 22 front_text.messages[1] set value '"\\u00a7a[简单难度]"'
# execute if score chest.type board matches 2 run data modify block 347 76 22 front_text.messages[(2-1)] set value '"\\u00a7b\\u00a7l[逃离神庙]"'}
execute if score zombie.type board matches 2 run data modify block 347 76 22 front_text.messages[1] set value '"\\u00a7c[困难难度]"'

# execute if score chest.type board matches 4 run data modify block 347 76 22 front_text.messages[(2-1)] set value '"\\u00a7d\\u00a7l[五子棋]"'}
