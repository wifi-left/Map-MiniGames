execute as @a[team=play.repel,gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:gray_stained_glass run tag @s add out.repel
execute as @a[team=play.repel,gamemode=adventure] at @s if block ~ ~-1 ~ minecraft:gray_stained_glass run tag @s add out.repel
execute as @a[tag=out.repel] run tellraw @a[team=play.repel] [{"selector":"@s"},"\u00a7c 淘汰了 ！"]
execute as @a[tag=out.repel] run scoreboard players operation @s number = cnt.repel number
execute as @a[tag=out.repel] run scoreboard players add cnt.repel number 1
gamemode spectator @a[tag=out.repel]
clear @a[tag=out.repel]
tp @a[tag=out.repel] -58.5 30.5 -15.5 0 90
tag @a[tag=out.repel] remove out.repel
scoreboard players set play.repel.player tick 0 
execute as @a[team=play.repel,gamemode=adventure] run scoreboard players add play.repel.player tick 1
execute unless score play.repel.player tick matches 2.. run function minecraft:repel/over