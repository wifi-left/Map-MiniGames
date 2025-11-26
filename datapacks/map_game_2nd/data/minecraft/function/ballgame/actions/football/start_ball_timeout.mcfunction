tellraw @a[team=ballgame] ["\u00a7c发球超时。\n\u00a7a现在每个人都可以踢球。"]
scoreboard players set ballgame.state state 1
scoreboard players set ball.time board 60
scoreboard players operation ball.time board *= ballgame.time state
scoreboard players add ball.time board 1

execute as @a[team=ballgame,gamemode=adventure] run item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={binding_curse:1},dyed_color=65331]
clear @a[team=ballgame] leather_boots[custom_data~{ball_boots:true}]