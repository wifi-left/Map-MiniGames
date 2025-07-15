##
## Datapack Upgrader v1.0.2 by wifi_left
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
scoreboard players reset * score
scoreboard players reset * bw.board
scoreboard players reset * park.x
scoreboard players reset * park.y
scoreboard players reset * park.z

# function ttsecond

