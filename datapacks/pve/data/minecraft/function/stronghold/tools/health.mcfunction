effect give @a[distance=..5,gamemode=adventure,team=stronghold] instant_health 1 1 true
title @a[distance=..5,gamemode=adventure,team=stronghold] actionbar ["\u00a7a你接受了来自 ",{"selector":"@s"}," \u00a7a的疗伤"]
execute as @a[gamemode=spectator,tag=stronghold.alive] at @s run function minecraft:stronghold/death/rescue
# execute at @s run particle dust{color:[0,0,0],scale:1} ~ ~ ~ 1 1 1 1 50 normal
execute at @s run particle dust{color:[10,1000,1],scale:1} ~ ~ ~ 2 2 2 1 50 normal

advancement revoke @s only stronghold/tools/health
