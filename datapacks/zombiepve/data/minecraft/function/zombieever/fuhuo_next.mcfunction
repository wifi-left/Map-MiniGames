##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute if score zombie.mode board matches ..2 as @a[team=play.zombie,gamemode=spectator,tag=!GOABLE.SPEC] at @s run function zombieever/fuhuo

xp set @s 0 levels
xp set @s 0 points
