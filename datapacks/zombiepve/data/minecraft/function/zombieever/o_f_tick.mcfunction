##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute if score zombie.state state matches 1 if score zombie.round board matches 10.. as @e[tag=pve.zombie,tag=pve.gunzombie] at @s run function gun/zombiegun/shoot
execute if score zombie.state state matches 1 as @e[tag=pve.zombie,tag=pve.displayhealth] at @s unless data entity @s {CustomNameVisible:1b} run function zombieever/zombie/displayhealth

execute if score zombie.state state matches 1 as @e[tag=pve.zombie,tag=!pve.oldmob] at @s run function zombieever/mobinit
