##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

execute as @e[tag=hide2.ranitem] at @s run data merge block ~ ~ ~ {LootTable:""}
execute as @e[tag=hide2.ranitem] at @s run setblock ~ ~ ~ air
execute as @e[tag=hide2.ranitem] at @s run setblock ~ ~ ~ minecraft:barrel[open=true]{LootTable:"hide2/item"} replace

title @a[tag=hide2.sel] actionbar ["\u00a7a事件：\u00a7c刷新物品"]
tellraw @a[tag=hide2.sel] ["\n\u00a7a事件：\u00a7c刷新物品\n"]


execute as @a[tag=hide2.sel] at @s run playsound minecraft:block.chest.open player @s ~ ~ ~ 1 1 1
