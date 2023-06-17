execute store result score temp board run data get entity @e[type=item,distance=0..1,limit=1,sort=nearest,nbt={Item:{id:"minecraft:iron_ingot"}}] Item.Count
scoreboard players set temp board 0
execute at @s as @a[tag=bw.play,gamemode=!spectator,distance=0..2] run scoreboard players add temp board 1
execute if score temp board matches ..1 run function fix:bw/irspan
execute if score temp board matches 2.. run function fix:bw/irgive
execute if score temp board matches 2.. run playsound entity.item.pickup player @a[tag=bw.play,gamemode=!spectator,distance=0..2] ~ ~ ~ 1 1 0.5
scoreboard players reset temp board
