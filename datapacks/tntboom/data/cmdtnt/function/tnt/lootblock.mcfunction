##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if block ~ ~ ~ #cmdtnt:bw_tnt_3 run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ #cmdtnt:bw_tnt_0_8 run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ #cmdtnt:bw_tnt_9 run loot spawn ~ ~ ~ mine ~ ~ ~
execute if block ~ ~ ~ #cmdtnt:bw_tnt_9 run setblock ~ ~ ~ air
execute if block ~ ~ ~ #cmdtnt:bw_tnt_0_8 run setblock ~ ~ ~ air
execute if block ~ ~ ~ #cmdtnt:bw_tnt_3 run setblock ~ ~ ~ air
kill @s
