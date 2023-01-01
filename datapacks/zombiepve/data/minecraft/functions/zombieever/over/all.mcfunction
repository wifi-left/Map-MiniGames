schedule function zombieever/over/back 5s
tellraw @a ["\u00a72\u00a7lZombie Day >>> \u00a76游戏结束！持续轮数：",{"score":{"objective": "board","name": "zombie.round"},"color":"yellow"}]
scoreboard players set zombie.state state 5
schedule clear zombieever/nextround
bossbar set zombie:zombiecount name ["\u00a7c游戏结束！"]
scoreboard players reset * zombie.coin
schedule clear minecraft:zombieever/nextround

forceload add 393 30 304 -160

kill @e[tag=pve.zombie]

forceload remove 393 30 304 -160
