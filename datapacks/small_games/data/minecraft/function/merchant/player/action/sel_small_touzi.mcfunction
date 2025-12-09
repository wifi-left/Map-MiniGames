clear @s
tellraw @s ["\u00a76你选择了\u00a7b\u00a7l摇小骰子\u00a76。"]
scoreboard players set desk.state state 3
execute store result score merchant.jump.waittime board run random value 20..30
scoreboard players set merchant.touzi.type board 2