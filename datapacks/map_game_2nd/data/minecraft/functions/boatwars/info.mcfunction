tag @s add sel
execute as @e[tag=btw.boat,type=boat] if score @s park.uuid = @a[tag=sel,limit=1] park.uuid run tag @s add damage.boat
scoreboard players set boat.health board 0
scoreboard players operation boat.health board = @e[tag=damage.boat] btw.score
title @s actionbar ["\u00a7b船等级：",{"score":{"objective": "btw.boattype","name": "@s"},"color": "green"}," \u00a7d枪速度：",{"score":{"objective": "btw.gunspeed","name": "@s"},"color": "green"}," \u00a7e金币：",{"score":{"objective": "btw.coin","name": "@s"},"color": "light_purple"}," \u00a76剩余血量：",{"score":{"objective": "board","name": "boat.health"},"color": "red"}]
execute if score boat.health board matches ..0 run function boatwars/boatdied

tag @e[type=boat,tag=damage.boat] remove damage.boat
tag @s remove sel