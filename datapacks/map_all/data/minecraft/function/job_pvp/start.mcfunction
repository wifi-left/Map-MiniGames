##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# tp @s @e[limit=1,sort=random,tag=pvp.tp]
function minecraft:job_pvp/random_tp
team join job_pvp @s
tellraw @a[team=job_pvp] ["§d ＞ ",{"selector":"@s"},"§d 进入了战场！"]
#
tellraw @a[team=wait.jobpvp] ["§d ＞ ",{"selector":"@s"},"§d 进入了战场！"]
xp set @s 0 levels
xp set @s 0 points

