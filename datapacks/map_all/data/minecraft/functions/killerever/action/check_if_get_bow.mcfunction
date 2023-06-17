scoreboard players set @s temp 0
execute store result score @s temp run clear @s bow{dtb:1b} 0
execute if score @s temp matches 1.. run clear @s bow{dtb:1b} 1
execute if score @s temp matches 1.. run tellraw @s ["\u00a7c你不能捡起这把弓。"]
execute if score @s temp matches 1.. run data merge entity @e[limit=1,sort=nearest,tag=killer.bow,type=armor_stand] {CustomName:'["\\u00a7a弓\\u00a77 - 右键获取"]',Marker:0b,CustomNameVisible:1b,Invulnerable:0b,NoAI:1b,Silent:1b,NoGravity:1b,PersistenceRequired:1b,Glowing:1b,Tags:["killer.bow"],HandItems:[{id:"minecraft:bow",Count:1b,Damage:0s,tag:{dtb:1b,Unbreakable:1b,display:{Name:'["\\u00a7a弓"]'},Enchantments:[{id:"minecraft:power",lvl:10s}]}},{}]}
execute if score @s temp matches 1.. run function minecraft:killerever/action/check_if_get_bow

scoreboard players reset @s temp