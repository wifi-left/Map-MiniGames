playsound ui.button.click player @s
execute unless score zombie.state state matches 1.. run scoreboard players add zombie.type board 1
execute if score zombie.state state matches 1.. run tellraw @s ["\u00a7c游戏已经开始，当前无法修改。"]
execute if score zombie.type board matches 5.. run scoreboard players set zombie.type board 1
execute if score zombie.type board matches 3.. run scoreboard players set zombie.type board 1
execute if score zombie.type board matches ..1 run data merge block 347 91 22 {Text2:'"\\u00a7a\\u00a7l[村民守卫战]"'}
execute if score zombie.type board matches ..1 run data merge block 347 91 21 {Text2:'"\\u00a7e购买武器，与僵尸战斗"'}
execute if score zombie.type board matches ..1 run data merge block 347 91 21 {Text3:'"\\u00a7a保护村民，并活下去"'}
# execute if score chest.type board matches 2 run data merge block 347 91 22 {Text2:'"\\u00a7b\\u00a7l[逃离神庙]"'}
execute if score zombie.type board matches 2 run data merge block 347 91 22 {Text2:'"\\u00a7c\\u00a7l[闯关模式]"'}
execute if score zombie.type board matches 2 run data merge block 347 91 21 {Text2:'"\\u00a7e购买武器，与僵尸战斗"'}
execute if score zombie.type board matches 2 run data merge block 347 91 21 {Text3:'"\\u00a7c能活下去，就是胜利！"'}

# execute if score chest.type board matches 4 run data merge block 347 91 22 {Text2:'"\\u00a7d\\u00a7l[五子棋]"'}