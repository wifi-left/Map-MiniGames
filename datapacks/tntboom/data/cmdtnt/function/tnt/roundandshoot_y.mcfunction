##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players add tnt.round.y board 1
summon marker ~ ~ ~ {Tags:["cmd.tnt","cmd.tnt.new"]}
execute as @s at @s run tp @e[tag=cmd.tnt.new] @s
scoreboard players set tnt.round.go board 69
execute as @e[tag=cmd.tnt.new] at @s run function cmdtnt:tnt/tntgo
execute at @s run tp @s ~ ~ ~ ~ ~15
kill @e[tag=cmd.tnt.new]
execute if score tnt.round.y board matches 12.. at @s run tp @s ~ ~ ~ ~ -90
execute if score tnt.round.y board matches ..12 run function cmdtnt:tnt/roundandshoot_y
