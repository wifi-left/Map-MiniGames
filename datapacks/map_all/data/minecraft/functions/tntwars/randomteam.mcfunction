##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tag @a[tag=tnt.tanteam,sort=random,limit=1] add tnt.ransel
scoreboard players add rand board 1
execute if score rand board matches 3.. run scoreboard players set rand board 1
execute if score rand board matches ..1 run tag @a[tag=tnt.ransel] add tntwars.a

execute if score rand board matches 2.. run tag @a[tag=tnt.ransel] add tntwars.b

tag @a[tag=tnt.ransel] remove tnt.tanteam
tag @a[tag=tnt.ransel] remove tnt.ransel

