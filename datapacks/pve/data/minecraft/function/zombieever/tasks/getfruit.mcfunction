##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @e[tag=pve.event.block.fruit,limit=8,sort=random] at @s run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=3]
execute as @e[tag=pve.event.block.fruit,limit=3,sort=random] at @s run setblock ~ ~ ~ minecraft:sweet_berry_bush[age=2]
tellraw @a[team=play.zombie] ["\n§b收到任务 §a",{"color":"green","text":"[收获果实]","hover_event":{"action":"show_text","value":[{"text":"§f寻找魔物，并击败它们。\n然后顺便收获超过18个甜浆果。\n\n§7温馨提示：提交时请让一个玩家提交。"}]}},"§a\n"]
function zombieever/rounds/3
scoreboard players set zombie.round board 3
scoreboard players set zombie.state state 1
# At least 16

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data merge entity @e[tag=pve.title,limit=1] {CustomName:"\u00a7a收集甜浆果"}
execute if score tmp board matches 18.. run playsound entity.player.levelup player @s ~ ~ ~ 2 0 1


