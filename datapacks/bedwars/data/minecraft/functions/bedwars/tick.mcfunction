# /say @e[nbt={Inventory:[{id:"minecraft:white_wool"}]}]
#data modify block -183 11 126 Items set from storage minecraft:shop Item
#tag @a[nbt={Inventory:[{id:"minecraft:gray_stained_glass_pane",tag:{shop:1}}]}] add bw.buy.1
execute as @a[tag=bw.play,scores={die=1..}] at @s run function minecraft:bedwars/during/player/loot
execute if score bw.state state matches 1.. run function minecraft:bedwars/testfor
## Shop
# 不可购买
scoreboard players reset @a[tag=bw.player] bw.board
execute as @a[tag=bw.player] store success score @s bw.board run clear @s gray_stained_glass_pane{shop:1}
execute as @a[tag=bw.player] if score @s bw.board matches 1.. run tag @s add bw.buy.1
execute as @a[tag=bw.buy.1] at @s run playsound minecraft:entity.player.burp player @s ~ ~ ~ 1 1 1
execute as @a[tag=bw.buy.1,limit=1] at @s run function bedwars/shop/resetshop
#/playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2 1
tag @a remove bw.buy.1
# 可购买
scoreboard players reset @a[tag=bw.player] bw.board
execute as @a[tag=bw.player] store success score @s bw.board run clear @s #minecraft:shopitem{bwshopitem:1} 0
execute as @a[tag=bw.player] if score @s bw.board matches 1.. run function bedwars/shop/shoptick

execute as @e[tag=tntsheep.spawn] at @s run function bedwars/item/tntsheep


## Other
spawnpoint @a[tag=bw.player] -225 9 111

fill -309 33 127 -303 29 134 air replace #minecraft:bedblocks
fill -386 33 214 -380 29 208 air replace #minecraft:bedblocks
fill -300 30 292 -305 30 285 air replace #minecraft:bedblocks
fill -221 33 205 -228 29 211 air replace #minecraft:bedblocks

fill -302 30 128 -301 32 130 air replace #minecraft:bedblocks
fill -385 30 207 -382 33 207 air replace #minecraft:bedblocks
fill -306 33 291 -306 30 286 air replace #minecraft:bedblocks

kill @e[type=item,nbt={Item:{id:"minecraft:red_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_bed"}}]
kill @e[type=item,nbt={Item:{tag:{bw:1}}}]

execute as @e[tag=bedwars,type=area_effect_cloud] at @s run data merge entity @s {Duration:-1,Age: -2147483648,WaitTime: -2147483648}
# [!]
function fix:bw/editnbt
#
execute if score bw.state state matches 1.. as @a[tag=bw.play] at @s as @e[distance=0..5,type=item,tag=!flaged] run tag @s add flaged
scoreboard players reset @a bw.board
#Item:{id:"minecraft:emerald",Count:1b,tag:{HideFlags:63,Can1Destroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}

execute as @a[x=-225,y=9,z=111,distance=0..2,gamemode=!creative] at @s run function minecraft:bedwars/during/player/died

execute as @e[type=egg] if score @s board matches 2.. at @s run setblock ~ ~-2.5 ~ white_wool keep
execute as @e[type=egg] if score @s board matches 2.. at @s run setblock ~1 ~-2.5 ~ white_wool keep
execute as @e[type=egg] if score @s board matches 2.. at @s run setblock ~-1 ~-2.5 ~ white_wool keep
execute as @e[type=egg] if score @s board matches 2.. at @s run setblock ~ ~-2.5 ~1 white_wool keep
execute as @e[type=egg] if score @s board matches 2.. at @s run setblock ~ ~-2.5 ~-1 white_wool keep
execute as @e[type=egg] if score @s board matches 2.. at @s run playsound entity.chicken.egg player @a
execute as @e[type=egg] if score @s board matches 30.. run kill @s
kill @e[type=chicken]
execute as @e[type=egg] run scoreboard players add @s board 1
execute as @a[gamemode=adventure] at @s run kill @s[y=-70,dy=-100]

## Kill Shop Items
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]
kill @e[type=item,nbt={Item:{tag:{bwshopitem:1}}}]

## Invis
tag @a[tag=INV] remove INV
tag @a[nbt={active_effects:[{id:"minecraft:invisibility"}]}] add INV
execute if entity @e[scores={attack.1=1..},tag=bw.player] run effect clear @a[tag=INV,scores={hurt.1=1..}] invisibility
execute if entity @e[scores={attack.1=1..},tag=bw.player] run tellraw @a[tag=INV,scores={hurt.1=1..}] ["\u00a7c你的隐身状态因为受到伤害被取消！"]
scoreboard players reset @a[scores={hurt.1=1..}] hurt.1
scoreboard players reset @a[scores={attack.1=1..}] attack.1
execute as @a[tag=INV] at @s run particle minecraft:dust 0.388 0.388 0.388 1 ~ ~ ~ 0 0 0 1 1 force
