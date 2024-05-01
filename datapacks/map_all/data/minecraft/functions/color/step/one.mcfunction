##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
function minecraft:color/colorstartran
scoreboard players remove color.tick tick 1
execute if score color.tick tick matches ..0 run function color/step/onetotwo
execute as @a[team=play.color] at @s run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 2 0.1 1
