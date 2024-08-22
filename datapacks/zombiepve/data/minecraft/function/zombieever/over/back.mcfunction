##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode adventure @a[gamemode=spectator,team=play.zombie]
execute as @a[team=play.zombie,gamemode=adventure] run function zombieever/join
scoreboard players set zombie.state state 0

kill @e[type=villager,tag=pve.npc]

kill @e[tag=pve.root]
kill @e[tag=pve.zombie]
kill @e[type=item,x=653,y=29,z=-51,distance=0..80]
kill @e[type=item,x=536,y=-24,z=-107,distance=0..80]
kill @e[type=experience_orb,x=628,y=39,z=-82,distance=0..60]
kill @e[type=experience_orb,x=536,y=-24,z=-107,distance=0..80]

function zombieever/over/clearfunctions

forceload remove 597 -111 714 1
forceload remove 656 -41 596 -112
forceload remove 585 -67 495 -154
