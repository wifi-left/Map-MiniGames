summon marker ~ ~ ~ {Tags:["gun.line","gun.new"],data:{guntype:10}}
tp @e[tag=gun.new] @s
tp @e[tag=gun.new] ~ ~1.6 ~
execute store result entity @e[tag=gun.new,limit=1] data.damage int 1 run data get entity @s SelectedItem.tag.damage
execute as @e[tag=gun.new] at @s unless block ^ ^ ^0.5 #bwplace run tp @s ^ ^ ^0.5
scoreboard players operation @e[tag=gun.new,limit=1] park.uuid = @s park.uuid
execute store result score @e[tag=gun.new] PSTJ run data get entity @s SelectedItem.tag.distance

execute store result score @e[tag=gun.new,limit=1] btw.gunspeed run data get entity @s SelectedItem.tag.speed

tag @e[tag=gun.new] remove gun.new
playsound minecraft:block.piston.contract player @s ~ ~ ~ 1 2 1
item modify entity @s weapon.mainhand usegun