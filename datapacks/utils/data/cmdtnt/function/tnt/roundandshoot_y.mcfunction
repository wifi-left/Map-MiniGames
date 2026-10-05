##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# 每条经线扫 13 档俯仰：-90°、-75°…+90°（+90° 即正上方，原先漏采）
scoreboard players add @s cmdtnt.y 1
summon marker ~ ~ ~ {Tags:["cmd.tnt","cmd.tnt.ray"]}
execute at @s run tp @e[tag=cmd.tnt.ray] @s
# 把本次爆炸的威力档从起点标记抄给射线标记（小威力档不破坏末地石）
execute if entity @s[tag=cmd.tnt.small] run tag @e[tag=cmd.tnt.ray] add cmd.tnt.small
scoreboard players operation @e[tag=cmd.tnt.ray] cmdtnt.go = @s cmdtnt.range
execute as @e[tag=cmd.tnt.ray] at @s run function cmdtnt:tnt/tntgo
execute at @s run tp @s ~ ~ ~ ~ ~15
kill @e[tag=cmd.tnt.ray]
execute if score @s cmdtnt.y matches 13.. at @s run tp @s ~ ~ ~ ~ -90
execute if score @s cmdtnt.y matches ..12 run function cmdtnt:tnt/roundandshoot_y
