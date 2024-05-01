##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
execute as @a[team=play.snow,gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:magma_block run function minecraft:snow/died
# execute if score snow.state state matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:snowball"}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{snow:1}}}}]

clear @a[team=play.snow] #minecraft:snowmineable
execute as @a[team=play.snow,gamemode=adventure] at @s run kill @e[type=item,distance=0..5]
execute as @e[type=item] at @s if block ~ ~-1 ~ magma_block run kill @s
execute if score snow.state state matches 1..1 if score snow.tntrun state matches 1.. run function minecraft:snow/tntrun/tick

execute if entity @a[tag=bw.player] run function minecraft:bedwars/tick
execute if entity @a[tag=parkouring,team=lobby] run function minecraft:npark/tick
execute if entity @a[team=parkour] run function minecraft:lpark/tick
execute if entity @a[tag=mazing,team=lobby] run function minecraft:maze/tick
execute if score beli.state state matches 1.. run function minecraft:believer/tick
execute if score color.state state matches 1.. run function minecraft:color/tick
execute if score beli.state state matches 1.. run function minecraft:believer/second
execute if score hotpot.state state matches 1.. run function minecraft:hotpotever/tick
execute if entity @a[team=job_pvp] run function minecraft:job_pvp/tick
execute if score killer.state state matches 1.. run function minecraft:killerever/tick
execute if score zombie.state state matches 1.. run function minecraft:zombieever/tick
scoreboard players reset @a[scores={zombie.hurt=1..}] zombie.hurt
execute if score duel.state state matches 1.. run function minecraft:duel/tick

scoreboard players reset @a[scores={JOBPVP.die=1..}] JOBPVP.die


scoreboard players reset @a[scores={hp.hurt=0..},team=!play.hotpot.k] hp.hurt
scoreboard players reset @a[scores={hp.gethurt=0..}] hp.gethurt

scoreboard players reset @a[scores={eat.goldapple=0..}] eat.goldapple
scoreboard players reset @a[scores={eat.glow=0..}] eat.glow

scoreboard players reset @a[scores={zombie.died=1..}] zombie.died

scoreboard players reset @a[scores={parkour=1..}] parkour

