execute if score @s blaze.coin matches ..99 run tellraw @s ["\u00a7c你已掉落全部金币。"]
execute if score @s blaze.coin matches ..99 run scoreboard players set @s blaze.coin 0
execute if score @s blaze.coin matches 100.. run tellraw @s ["\u00a7c你已掉落100金币。"]
execute if score @s blaze.coin matches 100.. run scoreboard players remove @s blaze.coin 100
execute if score blaze.state state matches 2.. if score blaze.mode state matches 2..3 run function minecraft:blaze/during/out

execute if score blaze.state state matches 0 run scoreboard players set @s hub 1
execute if score blaze.state state matches 1 run function minecraft:blaze/spec
execute if score blaze.state state matches 2.. as @s[team=blaze.team.a] run function minecraft:blaze/during/tp/a
execute if score blaze.state state matches 2.. as @s[team=blaze.team.b] run function minecraft:blaze/during/tp/b