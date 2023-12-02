tag @s add wolf.sell
execute as @a[tag=wolf.tip,team=wolfpeople,gamemode=adventure] at @s run function minecraft:twolf/action/per/death/boom/whochooseme
tag @s remove wolf.sell
execute as @a[tag=wolf.boomed] run function twolf/action/per/death/boom/died
tag @a remove wolf.boomed