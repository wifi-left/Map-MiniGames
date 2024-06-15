##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players reset @s hp.hurt

tellraw @a[team=play.hotpot] ["    ",{"selector":"@s"},"\u00a7b 将 \u00a7aHot Potato \u00a7b传给了 ",{"selector":"@a[tag=hp.flag]"}]
tellraw @a[team=play.hotpot.k] ["    ",{"selector":"@s"},"\u00a7b 将 \u00a7aHot Potato \u00a7b传给了 ",{"selector":"@a[tag=hp.flag]"}]
tellraw @a[tag=hp.flag] ["\n\u00a7c    你被 ",{"selector":"@s"}," \u00a7c传来了 \u00a7bHot Potato \u00a7c!\n"]
tellraw @s ["\u00a7a    你不在是 \u00a7cHot Potato\u00a7a 的拥有者！快跑！"]
team join play.hotpot @s
team join play.hotpot.k @a[tag=hp.flag]
clear @a[team=play.hotpot] potato
clear @a[team=play.hotpot.k] potato
give @a[team=play.hotpot.k] potato[custom_data={hotpot:1},custom_name='{"text":"Hot Potato","color":"#aed3ff","bold": true}']
playsound entity.firework_rocket.launch player @s
execute as @a[team=play.hotpot.k] at @s run playsound entity.firework_rocket.launch player @s
tag @a remove hp.flag
