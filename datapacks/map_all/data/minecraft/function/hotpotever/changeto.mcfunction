##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s hp.hurt
scoreboard players reset @a[tag=hp.flag] hp.gethurt
# execute if entity @a[tag=hp.flag,team=play.hotpot.k] run return run function minecraft:hotpotever/changetofaild
# execute unless entity @a[tag=hp.flag] run return run function minecraft:hotpotever/changetofaild
tellraw @a[team=play.hotpot] ["    ",{"selector":"@s"},"§b 将 §aHot Potato §b传给了 ",{"selector":"@a[tag=hp.flag]"}]
tellraw @a[team=play.hotpot.k] ["    ",{"selector":"@s"},"§b 将 §aHot Potato §b传给了 ",{"selector":"@a[tag=hp.flag]"}]
tellraw @a[tag=hp.flag] ["\n§c    你被 ",{"selector":"@s"}," §c传来了 §bHot Potato §c!\n"]
tellraw @s ["§a    你不在是 §cHot Potato§a 的拥有者！快跑！"]
team join play.hotpot @s
team join play.hotpot.k @a[tag=hp.flag]
clear @a[team=play.hotpot] potato
clear @a[team=play.hotpot.k] potato
give @a[team=play.hotpot.k] potato[custom_data={hotpot:1},custom_name={"text":"Hot Potato","color":"#aed3ff","bold": true}]
playsound entity.firework_rocket.launch player @s
execute as @a[team=play.hotpot.k] at @s run playsound entity.firework_rocket.launch player @s
tag @a remove hp.flag

