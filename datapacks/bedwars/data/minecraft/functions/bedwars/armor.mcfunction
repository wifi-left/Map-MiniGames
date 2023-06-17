tag @a[tag=bw.play] add bwneeds
tag @a[tag=bwneeds,nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] remove bwneeds
tag @a[tag=bwneeds,nbt={Inventory:[{id:"minecraft:stone_sword"}]}] remove bwneeds
tag @a[tag=bwneeds,nbt={Inventory:[{id:"minecraft:iron_sword"}]}] remove bwneeds
tag @a[tag=bwneeds,nbt={Inventory:[{id:"minecraft:diamond_sword"}]}] remove bwneeds

function fix:bw/armor

execute as @a[tag=INV,tag=bw.play] run function minecraft:bedwars/during/player/removearmor
execute as @a[tag=!INV,tag=bw.play] run function minecraft:bedwars/during/player/getarmor
stopsound @a[tag=bw.player] * minecraft:item.armor.equip_chain
stopsound @a[tag=bw.player] * minecraft:item.armor.equip_diamond
stopsound @a[tag=bw.player] * minecraft:item.armor.equip_gold
stopsound @a[tag=bw.player] * minecraft:item.armor.equip_iron
stopsound @a[tag=bw.player] * minecraft:item.armor.equip_leather
stopsound @a[tag=bw.player] * minecraft:item.armor.equip_elytra
stopsound @a[tag=bw.player] * minecraft:item.armor.equip_netherite
stopsound @a[tag=bw.player] * minecraft:item.armor.equip_turtle
stopsound @a[tag=bw.player] * minecraft:item.armor.equip_generic