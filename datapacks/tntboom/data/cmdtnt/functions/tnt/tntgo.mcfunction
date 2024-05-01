##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tellraw @a [{"score":{"objective": "board","name": "tnt.round.go"}}]
scoreboard players remove tnt.round.go board 10
# execute as @s at @s run particle dust 1 1 1 1 ~ ~ ~ 0 0 0 1 1
# say 1
execute if block ~ ~ ~ #cmdtnt:tnt_9 run scoreboard players remove tnt.round.go board 30
# execute if block ~ ~ ~ #cmdtnt:tnt_9 unless entity @e[limit=1,sort=nearest,distance=0..0.4,tag=cmd.tnt.boom] run summon marker ~ ~ ~ {Tags:["cmd.tnt","cmd.tnt.boom"]}
# execute if block ~ ~ ~ #cmdtnt:tnt_9 run setblock ~ ~ ~ air

execute if block ~ ~ ~ #cmdtnt:tnt_3 run scoreboard players remove tnt.round.go board 10
execute unless entity @e[limit=1,sort=nearest,distance=0..0.4,tag=cmd.tnt.boom] run summon marker ~ ~ ~ {Tags:["cmd.tnt","cmd.tnt.boom"]}
# execute if block ~ ~ ~ #cmdtnt:tnt_3 run setblock ~ ~ ~ air

execute if block ~ ~ ~ #cmdtnt:tnt_0_8 run scoreboard players remove tnt.round.go board 3
# execute if block ~ ~ ~ #cmdtnt:tnt_0_8 unless entity @e[limit=1,sort=nearest,distance=0..0.4,tag=cmd.tnt.boom] run summon marker ~ ~ ~ {Tags:["cmd.tnt","cmd.tnt.boom"]}
# execute if block ~ ~ ~ #cmdtnt:tnt_0_8 run setblock ~ ~ ~ air


execute as @s at @s run tp @s ^ ^ ^0.5
execute if score tnt.round.go board matches 1.. at @s run function cmdtnt:tnt/tntgo
