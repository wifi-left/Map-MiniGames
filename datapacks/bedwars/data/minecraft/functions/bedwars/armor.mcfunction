tag @a[tag=bw.play] add bwneeds
tag @a[tag=bwneeds,nbt={Inventory:[{id:"minecraft:wooden_sword"}]}] remove bwneeds
tag @a[tag=bwneeds,nbt={Inventory:[{id:"minecraft:stone_sword"}]}] remove bwneeds
tag @a[tag=bwneeds,nbt={Inventory:[{id:"minecraft:iron_sword"}]}] remove bwneeds
tag @a[tag=bwneeds,nbt={Inventory:[{id:"minecraft:diamond_sword"}]}] remove bwneeds

function fix:bw/armor

execute as @a[tag=INV,tag=bw.play,gamemode=!spectator] run function minecraft:bedwars/during/player/removearmor
execute as @a[tag=!INV,tag=bw.play,gamemode=!spectator] run function minecraft:bedwars/during/player/getarmor