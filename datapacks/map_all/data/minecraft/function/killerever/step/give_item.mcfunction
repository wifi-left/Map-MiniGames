team modify play.killer friendlyFire true
tellraw @a[team=play.killer] ["\u00a7c杀手已获得Ta的刀！请小心！"]
execute as @a[team=play.killer,tag=killer.killer] run function minecraft:killerever/step/give_item/killer
execute as @a[team=play.killer,tag=killer.saver] run function minecraft:killerever/step/give_item/saver

scoreboard players set play.killer tick 0
execute as @a[team=play.killer,gamemode=adventure] run scoreboard players add play.killer tick 1
scoreboard players set killer.time tick 301
execute if score play.killer tick matches 11..20 run scoreboard players set killer.time tick 601
execute if score play.killer tick matches 21.. run scoreboard players set killer.time tick 901
scoreboard players set killer.state state 3