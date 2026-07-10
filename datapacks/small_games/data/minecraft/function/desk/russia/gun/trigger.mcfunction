execute if score desk.russia.bullet board matches 1.. store result score desk.random board run random value 1..10
execute unless score desk.russia.bullet board matches 1.. run scoreboard players set desk.random board 10
execute if score desk.random board matches 6..10 as @a[team=deskgame] at @s run playsound block.chest.locked player @s ~ ~ ~ 1 0 1
execute if score desk.random board matches 6..10 run tellraw @a[team=deskgame] ["\u00a7c子弹是空的。"]
execute if score desk.random board matches 1..5 as @a[team=deskgame] at @s run playsound minecraft:item.crossbow.shoot player @s ~ ~ ~ 1 1 1
tag @s add desk.russia.hitted
execute at @s as @a[limit=1,sort=nearest,tag=!desk.russia.hitted,gamemode=adventure,team=deskgame] run tag @s add desk.russia.hitted
tag @s remove desk.russia.hitted
execute if score desk.random board matches 1..5 run tellraw @a[team=deskgame] ["\u00a76子弹射出。命中",{selector:"@a[tag=desk.russia.hitted]"}]
execute if score desk.random board matches 1..5 as @a[tag=desk.russia.hitted] at @s run function minecraft:desk/russia/gun/hit_player
execute if score desk.random board matches 1..5 run scoreboard players remove desk.russia.bullet board 1
tag @a remove desk.russia.hitted
