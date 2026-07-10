##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute at @s positioned 0.0 0.0 0.0 rotated as @s anchored eyes run summon marker ^ ^ ^3 {Tags:["tmp"]}
execute unless entity @e[tag=tnt.tntrain.fireball] run function tntwars/tntrainspawn/fireball
scoreboard players add tnt.fireballrain board 10
tellraw @a[team=play.tntwars] [{"selector":"@s"},"§6召唤了§c火球雨§6。"]
tellraw @a[team=wait.tntwars] [{"selector":"@s"},"§6召唤了§c火球雨§6。"]

