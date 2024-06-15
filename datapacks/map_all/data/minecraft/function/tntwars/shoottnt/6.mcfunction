##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute at @s positioned 0.0 0.0 0.0 rotated as @s anchored eyes run summon marker ^ ^ ^3 {Tags:["tmp"]}
execute unless entity @e[tag=tnt.tntrain.creeper] run function tntwars/tntrainspawn/creeper
scoreboard players add tnt.creeperrain board 10
tellraw @a[team=play.tntwars] [{"selector":"@s"},"\u00a76召唤了\u00a72苦力怕雨\u00a76。"]
tellraw @a[team=wait.tntwars] [{"selector":"@s"},"\u00a76召唤了\u00a72苦力怕雨\u00a76。"]
