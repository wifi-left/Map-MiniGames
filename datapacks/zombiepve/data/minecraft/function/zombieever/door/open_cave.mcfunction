##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
## In
# Left
fill 594 3 -58 594 5 -60 minecraft:air destroy
kill @e[type=item,x=594,y=3,z=-58,distance=..10]

tellraw @a[team=play.zombie] ["\n \u00a77\u00a7o一扇大门被打开了...\n"]

# playsound entity.firework_rocket.twinkle player @a[team=play.zombie] ~ ~ ~ 1 1 1
playsound minecraft:block.chest.open player @a[team=play.zombie] ~ ~ ~ 1 0.5 1


data merge entity @e[tag=pve.title,limit=1] {CustomName:'"\\u00a7b进入地牢"'}
bossbar set zombie:zombiecount name ["\u00a7b任务：",{"selector":"@e[tag=pve.title,type=marker,limit=1]","color":"yellow"}]


