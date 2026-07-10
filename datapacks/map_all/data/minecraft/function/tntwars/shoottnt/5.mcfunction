##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute at @s positioned 0.0 0.0 0.0 rotated as @s anchored eyes run summon marker ^ ^ ^3 {Tags:["tmp"]}
execute unless entity @e[tag=tnt.tntrain.tnt] run function tntwars/tntrainspawn/tnt
scoreboard players add tnt.tntrain board 10
tellraw @a[team=play.tntwars] [{"selector":"@s"},"§6召唤了§4TNT雨§6。"]
tellraw @a[team=wait.tntwars] [{"selector":"@s"},"§6召唤了§4TNT雨§6。"]

