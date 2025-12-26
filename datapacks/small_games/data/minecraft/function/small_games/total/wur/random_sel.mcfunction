execute store result score random temp run random value 1..2
execute if score random temp matches 1 run item replace entity @s weapon.offhand with paper[custom_data={"game_total":1,total.sel:a}]
execute if score random temp matches 2 run item replace entity @s weapon.offhand with paper[custom_data={"game_total":1,total.sel:b}]
tellraw @s ["\u00a7c您未能在规定时间内选择，已随机为您选择游戏。"]