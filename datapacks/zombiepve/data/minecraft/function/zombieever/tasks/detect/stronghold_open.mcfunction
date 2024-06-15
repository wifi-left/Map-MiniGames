##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set tmp board 0
execute as @a[team=play.zombie,gamemode=adventure] at @s run scoreboard players add tmp board 1
scoreboard players set tmp2 board 0
execute as @a[x=568,y=-11,z=-121,dx=9,dy=3,dz=1,team=play.zombie,gamemode=adventure] at @s run scoreboard players add tmp2 board 1
execute if score tmp2 board >= tmp board run function zombieever/tasks/enterstronghold
