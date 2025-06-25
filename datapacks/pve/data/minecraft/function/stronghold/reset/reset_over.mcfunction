execute in lobby run tp @a[tag=stronghold.alive] 290 -55 291 90 0
gamemode adventure @a[tag=stronghold.alive]
tellraw @a[team=stronghold] ["\n\n",{text:"    即将探索 ",color:gold},{score:{name:"pve.stronghold.level",objective:"board"},color:aqua},{text:" 层。",color:gold},"\n\n"]
title @a[team=stronghold] title ["\u00a7a探险开始"]
title @a[team=stronghold] subtitle [{text:"第 ",color:white},{score:{name:"pve.stronghold.level",objective:"board"},color:aqua},{text:" 层",color:white}]
effect give @a[tag=stronghold.alive] instant_health 1 25 true
scoreboard players set stronghold.state state 1

execute as @a[team=stronghold,gamemode=spectator] in lobby run tp @s 290 -55 291 90 0
# execute as @a[team=stronghold,gamemode=spectator] run tellraw @s ["\u00a7a您正在旁观游戏。"]
