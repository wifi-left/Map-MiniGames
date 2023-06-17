execute store result score temp board run data get entity @e[type=item,distance=0..2,limit=1,sort=nearest,nbt={Item:{id:"minecraft:gold_ingot"}}] Item.Count
# function fix:bw/gospan
scoreboard players set temp board 0
execute at @s as @a[tag=bw.play,gamemode=!spectator,distance=0..2] run scoreboard players add temp board 1
execute if score temp board matches ..1 run function fix:bw/gospan
execute if score temp board matches 2.. run function fix:bw/gogive
execute if score temp board matches 2.. run playsound entity.item.pickup player @a[tag=bw.play,gamemode=!spectator,distance=0..2] ~ ~ ~ 1 1 0.5

scoreboard players reset temp board
