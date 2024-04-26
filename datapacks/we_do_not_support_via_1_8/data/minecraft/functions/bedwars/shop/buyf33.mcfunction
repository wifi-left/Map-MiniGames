execute as @s at @s store result score @s bw.tmp.ir run clear @s iron_ingot 0
execute as @s at @s store result score @s bw.tmp.gd run clear @s gold_ingot 0
execute as @s at @s store result score @s bw.tmp.dm run clear @s diamond 0
execute as @s at @s store result score @s bw.tmp.em run clear @s emerald 0

execute if score @s bw.tmp.em matches 2.. run clear @s emerald 2
execute unless score @s bw.tmp.em matches 2.. run tellraw @s ["\u00a7c你的资源不够买这个东西!"]
execute unless score @s bw.tmp.em matches 2.. run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0 1
execute if score @s bw.tmp.em matches 2.. run tellraw @s ["\u00a7a你购买了\u00a76Speed Jump Potion * 1"]
execute if score @s bw.tmp.em matches 2.. run give @s minecraft:potion{custom_potion_effects:[{id:"speed",amplifier:1,duration:1200},{id:"jump_boost",amplifier:3,duration:1200}],CustomPotionColor:63205,display:{Name:'"雷碧"'}}
