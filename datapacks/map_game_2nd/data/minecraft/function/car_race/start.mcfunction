##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tp @a[team=car.wait] 199 81 45 180 0
give @a[team=car.wait] minecart[custom_data={gcar:1b},custom_name=[{"text":"\u00a7aGCAR \u00a77 - 放到\u00a7e副手"},"\u00a77使用"]] 1
tellraw @a[team=car.wait] ["§b请选手各就各位，拿着矿车按下",{"keybind":"key.swapOffhand","color":"yellow"},"§b 或者将矿车放置在副手召唤坐骑。\n§a当所有玩家乘坐上坐骑，游戏才会开始。"]
title @a[team=car.wait] title [{"text":"Car Race","color":"#009966","bold": true}]
title @a[team=car.wait] subtitle ["\u00a7b拿着矿车使用",{"keybind":"key.swapOffhand","color":"yellow"},"\u00a7e键\u00a7b快速召唤坐骑"]
kill @e[tag=GCAR]
team join car.play @a[team=car.wait]
scoreboard players set car.state state 2
# fill 196 82 42 202 81 42 minecraft:barrier
fill 202 82 41 196 81 43 minecraft:acacia_fence
# fill 202 81 43 196 81 43 air
scoreboard players reset * car.rounds
tag @a remove car.win

