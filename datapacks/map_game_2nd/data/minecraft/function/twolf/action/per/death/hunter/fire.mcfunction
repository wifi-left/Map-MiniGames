##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @s remove wolf.protected
tag @s remove wolf.killed
tag @s remove wolf.fired
tag @s remove wolf.rescued
tag @s remove wolf.poisoned
tag @s remove wolf.lastprotected
tag @a remove wolf.wolf
execute as @a[team=wolfpeople,gamemode=adventure] if score @s LRS_JOB matches 4 run tag @s add wolf.wolf
execute as @a[limit=1,sort=random,tag=wolf.wolf] run function minecraft:twolf/action/per/death/died
tag @a remove wolf.wolf


