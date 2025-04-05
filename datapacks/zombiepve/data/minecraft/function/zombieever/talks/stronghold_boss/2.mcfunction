##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

tellraw @a[team=play.zombie] ["§b幻术师：§f来，小伙子们，一起陪他们玩玩！"]
scoreboard players set zombie.round board 26
schedule function minecraft:zombieever/rounds/strongholdboss 4s append

