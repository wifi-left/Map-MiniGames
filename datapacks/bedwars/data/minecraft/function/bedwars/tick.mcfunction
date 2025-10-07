##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# /say @e[nbt={Inventory:[{id:"minecraft:white_wool"}]}]
#data modify block -183 11 126 Items set from storage minecraft:shop Item
#tag @a[nbt={Inventory:[{id:"minecraft:gray_stained_glass_pane",tag:{shop:1}}]}] add bw.buy.1
execute as @a[tag=bw.play,scores={die=1..}] at @s run function minecraft:bedwars/during/player/loot
execute if score bw.state state matches 1.. run function minecraft:bedwars/testfor
## Shop
# 不可购买
execute as @a[tag=bw.player] if items entity @s player.cursor *[custom_data~{shop:1}] at @s run function bedwars/shop/resetshop2
execute as @a[tag=bw.player] if items entity @s container.* *[custom_data~{shop:1}] at @s run function bedwars/shop/resetshop2
execute as @a[tag=bw.player] if items entity @s weapon.offhand *[custom_data~{shop:1}] at @s run function bedwars/shop/resetshop2

# 可购买
execute as @a[tag=bw.player] if items entity @s player.cursor *[custom_data~{bwshopitem:1}] at @s run function bedwars/shop/shoptick
execute as @a[tag=bw.player] if items entity @s container.* *[custom_data~{bwshopitem:1}] at @s run function bedwars/shop/shoptick
execute as @a[tag=bw.player] if items entity @s weapon.offhand *[custom_data~{bwshopitem:1}] at @s run function bedwars/shop/shoptick

execute as @e[tag=tntsheep.spawn] at @s run function bedwars/item/tntsheep


## Other
spawnpoint @a[tag=bw.player] -225 9 111



kill @e[type=item,nbt={Item:{id:"minecraft:red_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:blue_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:yellow_bed"}}]
kill @e[type=item,nbt={Item:{id:"minecraft:lime_bed"}}]
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{bw:1}}}}]


execute as @e[tag=bedwars,type=area_effect_cloud] at @s run data merge entity @s {Duration:-1,Age:-2147483648,WaitTime:-2147483648}
# [!]
function fix:bw/editnbt
#
execute if score bw.state state matches 1.. as @a[tag=bw.play] at @s as @e[distance=0..5,type=item,tag=!flaged] run tag @s add flaged
scoreboard players reset @a bw.board
#Item:{id:"minecraft:emerald",Count:1b,tag:{HideFlags:63,Can1Destroy:["#minecraft:bedblocks"],CanPlaceOn:["#minecraft:bwplace"]}}

execute as @a[x=-225,y=9,z=111,distance=0..2,gamemode=!creative] at @s run function minecraft:bedwars/during/player/died

execute as @e[type=egg] at @s run function minecraft:bedwars/item/eggtick
kill @e[type=chicken]
execute as @e[type=egg] run scoreboard players add @s board 1

## Kill Shop Items
kill @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{bwshopitem:1}}}}]

## Invis
tag @a[tag=INV] remove INV
tag @a[nbt={active_effects:[{id:"minecraft:invisibility"}]}] add INV
execute if entity @e[scores={attack.1=1..},tag=bw.player] run effect clear @a[tag=INV,scores={hurt.1=1..}] invisibility
execute if entity @e[scores={attack.1=1..},tag=bw.player] run tellraw @a[tag=INV,scores={hurt.1=1..}] ["§c你的隐身状态因为受到伤害被取消！"]
scoreboard players reset @a[scores={hurt.1=1..}] hurt.1
scoreboard players reset @a[scores={attack.1=1..}] attack.1
execute as @a[tag=INV] at @s run particle minecraft:dust{color:[0.388d, 0.388d, 0.388d],scale:1} ~ ~ ~ 0 0 0 1 1 force

execute if score bw.mode state matches 3 run function minecraft:bedwars/special/xp_change
execute if score bw.mode state matches 7 run function minecraft:bedwars/special/xp_change

execute as @a[tag=bw.player] if items entity @s container.* bucket[!custom_data~{good_bucket:true}] run function minecraft:bedwars/item/bucket
execute as @a[tag=bw.player] if items entity @s weapon.offhand bucket[!custom_data~{good_bucket:true}] run function minecraft:bedwars/item/bucket
execute as @a[tag=bw.player] if items entity @s container.* water_bucket[!custom_data~{good_bucket:true}] run function minecraft:bedwars/item/water_bucket
execute as @a[tag=bw.player] if items entity @s weapon.offhand water_bucket[!custom_data~{good_bucket:true}] run function minecraft:bedwars/item/water_bucket