summon marker ~ ~ ~ {Tags:["bettergun.line","bettergun.new"],data:{guntype:10}}
execute at @s anchored eyes rotated as @s run tp @e[tag=bettergun.new] ^ ^ ^
execute at @s anchored eyes rotated as @s as @e[tag=bettergun.new] run rotate @s ~ ~
execute store result entity @e[tag=bettergun.new,limit=1] data.damage int 1 run data get entity @s SelectedItem.components."minecraft:custom_data".gun_data.damage

scoreboard players operation @e[tag=bettergun.new,limit=1] park.uuid = @s park.uuid
execute store result score @e[tag=bettergun.new] PSTJ run data get entity @s SelectedItem.components."minecraft:custom_data".gun_data.distance

execute store result score @e[tag=bettergun.new,limit=1] btw.gunspeed run data get entity @s SelectedItem.components."minecraft:custom_data".gun_data.speed

tag @e[tag=bettergun.new] remove bettergun.new