##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function lobby/getrandom1

# 1~11

execute if score random board matches ..1 run tellraw @s ["\u00a7c\u00a7l你喝下了它，觉得身体有了更多力量。"]
execute if score random board matches ..1 run effect give @s strength 15 1 true
execute if score random board matches 2 run tellraw @s ["\u00a7a\u00a7l你喝下了它，觉得身体更加轻盈。"]
execute if score random board matches 2 run effect give @s jump_boost 15 2 true
execute if score random board matches 3 run tellraw @s ["\u00a7b\u00a7l你喝下了它，觉得跑得更快了。"]
execute if score random board matches 3 run effect give @s speed 15 1 true
execute if score random board matches 4 run tellraw @s ["\u00a7c\u00a7l你喝下了它，觉得身体有点不适。"]
execute if score random board matches 4 run effect give @s minecraft:nausea 15 1 true
execute if score random board matches 5 run tellraw @s ["\u00a7f\u00a7l你喝下了它，觉得身体轻飘飘的。"]
execute if score random board matches 5 run effect give @s levitation 15 2 true
execute if score random board matches 5 run effect give @s slow_falling 20 2 true
execute if score random board matches 6 run tellraw @s ["\u00a72\u00a7l你喝下了它，觉得胃痛。"]
execute if score random board matches 6 run effect give @s resistance 1 25 true
execute if score random board matches 6 run effect give @s instant_damage 1 0 true
execute if score random board matches 7 run tellraw @s ["\u00a73\u00a7l你喝下了它，觉得身体倍儿棒。"]
execute if score random board matches 7 run effect give @s regeneration 15 2 true
execute if score random board matches 8 run tellraw @s ["\u00a76\u00a7l你喝下了它，觉得身体非常硬朗。"]
execute if score random board matches 8 run effect give @s resistance 15 1 true
execute if score random board matches 9 run tellraw @s ["\u00a7f\u00a7l你喝下了它，觉得身体非常轻盈。"]
execute if score random board matches 9 run effect give @s slow_falling 15 1 true
execute if score random board matches 10 run tellraw @s ["\u00a77\u00a7l你...下...它，觉...视力..."]
execute if score random board matches 10 run effect give @s blindness 15 1 true
execute if score random board matches 10 run effect give @s darkness 15 1 true
execute if score random board matches 11.. run tellraw @s ["\u00a7a\u00a7l你喝下了它，然后，啥也没发生。"]

title @s actionbar ["\u00a7f你饮用了\u00a76\u00a7l哈尔克拉特制营养酒"]
stopsound @s * entity.ender_dragon.flap

playsound minecraft:entity.wandering_trader.drink_potion player @s ~ ~ ~ 1 1 1
