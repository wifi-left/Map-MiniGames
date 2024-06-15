##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset * park.uuid
scoreboard players set p.uid park.uuid 0
execute as @a run function npark/getuuid
scoreboard players reset * kill
scoreboard players reset * job_kill
scoreboard players reset * leave
scoreboard players reset * dropper.level
scoreboard players reset * old

# function ttsecond
