tellraw @a[team=ballgame] ["\u00a7a已经发球。现在你可以抢球了。"]
scoreboard players set ballgame.state state 1
scoreboard players set ball.time board 60
scoreboard players operation ball.time board *= ballgame.time state
scoreboard players add ball.time board 1

execute as @a[team=ballgame,gamemode=adventure] run item replace entity @s armor.feet with leather_boots[unbreakable={},enchantments={binding_curse:1},dyed_color=65331]
clear @a[team=ballgame] leather_boots[custom_data~{ball_boots:true}]
execute as @a[team=ballgame] run function minecraft:ballgame/actions/football/give_rush
execute as @a[team=ballgame] run function minecraft:ballgame/actions/football/give_jump