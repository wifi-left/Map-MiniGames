##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute if entity @a[tag=hp.flag,team=play.hotpot.k] run return run function minecraft:hotpotever/changetofaild
# execute unless entity @a[tag=hp.flag] run return run function minecraft:hotpotever/changetofaild
tellraw @a[team=play.hotpot] ["    ",{"selector":"@a[tag=hot.hit]"},"§b 将 §aHot Potato §b传给了 ",{"selector":"@a[tag=hp.flag]"}]
tellraw @a[team=play.hotpot.k] ["    ",{"selector":"@a[tag=hot.hit]"},"§b 将 §aHot Potato §b传给了 ",{"selector":"@a[tag=hp.flag]"}]
tellraw @a[tag=hp.flag] ["\n§c    你被 ",{"selector":"@a[tag=hot.hit]"}," §c传来了 §bHot Potato §c!\n"]
tellraw @s ["§a    你不在是 §cHot Potato§a 的拥有者！快跑！"]
team join play.hotpot @a[tag=hot.hit]
team join play.hotpot.k @a[tag=hp.flag]

clear @a[team=play.hotpot] potato
clear @a[team=play.hotpot.k] potato
execute if score hotpot.mode board matches 3 run clear @a[team=play.hotpot] trident
execute if score hotpot.mode board matches 2 run clear @a[team=play.hotpot] bow
execute if score hotpot.mode board matches 4 run clear @a[team=play.hotpot] crossbow

give @a[team=play.hotpot.k] potato[custom_data={hotpot:1},item_name={"text":"Hot Potato","color":"#aed3ff","bold": true}]
execute as @a[tag=hot.hit] at @s run playsound entity.firework_rocket.launch player @s
execute as @a[team=play.hotpot.k] at @s run playsound entity.firework_rocket.launch player @s
tag @a[tag=hp.flag] remove hp.flag
tag @a[tag=hot.hit] remove hot.hit