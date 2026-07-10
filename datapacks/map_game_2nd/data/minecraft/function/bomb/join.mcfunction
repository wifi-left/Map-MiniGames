##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
team join boom @s
gamemode adventure @s[gamemode=spectator]
tellraw @a [{"selector":"@s"},"§a 加入了§f拆弹专家§a。"]
title @s title ["\u00a7d拆弹专家"]
title @s subtitle ["\u00a7a欸？我的脑子在哪？"]
tellraw @s ["\n§d§l拆弹专家 §6| §a在不激活幽匿尖啸体的情况下拆掉炸弹。\n"]
execute in overworld run tp @s 415 -63 598 0 0

execute at @s run playsound entity.player.levelup player @s ~ ~ ~ 10 1 1
clear @s
effect clear @s
execute if score boom.state state matches 1.. run function minecraft:bomb/spec
effect give @s instant_health 2 25 true

execute as @s[tag=GLOBAL.SPEC] run function player:spec_mode/tip
# tellraw @s ["\n\u00a7c仍在制作，敬请期待。\n"]
