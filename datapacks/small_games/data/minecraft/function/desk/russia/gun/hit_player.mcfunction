playsound entity.generic.explode player @s ~ ~ ~ 1 1 1
scoreboard players set desk.tmp board 0
execute store result score desk.tmp board run clear @s *[custom_data~{desk:"shield"}] 1
execute if score desk.tmp board matches 1.. run tellraw @a[team=deskgame] [{selector:"@s"},"\u00a7a 使用道具免疫了此次伤害。"]
execute if score desk.tmp board matches 1.. run return run tellraw @s ["\u00a7a你已免疫此次伤害。道具已消耗。"]
execute if score @s health matches ..3 run function minecraft:desk/russia/died
execute if score @s health matches 4.. run damage @s 2 out_of_world