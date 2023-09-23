tag @s add sel
tag @a[team=btw.play.a,tag=hitted] add seled
execute as @a[team=btw.play.b] if score @s park.uuid = @e[tag=sel,limit=1] park.uuid run tag @s add hit.player
execute as @e[tag=btw.boat,type=boat] if score @s park.uuid = @a[tag=hitted,limit=1] park.uuid run tag @s add damage.boat
execute store result score tmp board run data get entity @s data.damage
execute if score tmp board matches ..0 run scoreboard players set tmp board 1



execute as @e[tag=damage.boat] at @s run scoreboard players operation @s btw.score -= tmp board
execute as @a[tag=seled] at @s run particle minecraft:block redstone_block ~ ~1.5 ~ 0 0 0 1 10
execute as @a[tag=seled] at @s run playsound entity.player.hurt player @s ~ ~ ~ 1 1 0.5
execute as @a[tag=hit.player] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 1 0.5
scoreboard players add @a[tag=hit.player] btw.coin 10
title @a[tag=seled] actionbar ["\u00a7c\u00a7l被击中。\u00a76剩余血量：",{"score":{"objective": "btw.score","name": "@e[tag=damage.boat,limit=1]"},"color": "gold"}]
tellraw @a[tag=hit.player] ["\u00a7c\u00a7l击中目标。\u00a76剩余血量：",{"score":{"objective": "btw.score","name": "@e[tag=damage.boat,limit=1]"},"color": "gold"}]
tag @a[tag=seled] remove seled
tag @s remove sel
tag @e[type=boat,tag=damage.boat] remove damage.boat
tag @a remove hit.player
function boatgun:gun/die
