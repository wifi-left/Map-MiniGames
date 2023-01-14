# execute at @s positioned 0.0 0.0 0.0 rotated as @s anchored eyes run summon marker ^ ^ ^3 {Tags:["tmp"]}
execute unless entity @e[tag=tnt.tntrain.tnt] run function tntwars/tntrainspawn/tnt
scoreboard players set tnt.tntrain board 12
tellraw @a[team=play.tntwars] [{"selector":"@s"},"\u00a76召唤了\u00a74TNT雨\u00a76。"]
tellraw @a[team=wait.tntwars] [{"selector":"@s"},"\u00a76召唤了\u00a74TNT雨\u00a76。"]