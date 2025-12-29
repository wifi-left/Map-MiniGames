scoreboard players set mutouren.time tick 241
execute store result score mutouren.next_freeze tick run random value 6..20

scoreboard players set mutouren.player tick 0
execute as @a[team=mutouren,gamemode=adventure] run scoreboard players add mutouren.player tick 1

execute in parkourworld run fill -4 -53 423 -4 -55 419 minecraft:air replace oak_fence

execute as @a[team=mutouren,gamemode=adventure] at @s run function minecraft:mutouren/map/true_start
scoreboard players set mutouren.state state 3
execute as @a[team=mutouren] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1


kill @e[type=pillager,tag=mutouren.pillager]

execute in parkourworld run summon pillager 38 -41 421 {NoAI:true,CustomName:"鬼",CustomNameVisible:true,Glowing:true,Tags:["mutouren.pillager"],DeathLootTable:"empty",PersistenceRequired:true}