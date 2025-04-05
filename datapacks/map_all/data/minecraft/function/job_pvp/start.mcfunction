# tp @s @e[limit=1,sort=random,tag=pvp.tp]
function minecraft:job_pvp/random_tp
team join job_pvp @s
tellraw @a[team=job_pvp] ["\u00a7d ＞ ",{"selector":"@s"},"\u00a7d 进入了战场！"]
#
tellraw @a[team=wait.jobpvp] ["\u00a7d ＞ ",{"selector":"@s"},"\u00a7d 进入了战场！"]
xp set @s 0 levels
xp set @s 0 points
