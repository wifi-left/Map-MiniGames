##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
summon marker ~ ~ ~ {Tags:["gun.line","gun.new"],data:{guntype:2}}
tp @e[tag=gun.new] @s
tp @e[tag=gun.new] ~ ~1.6 ~
execute as @e[tag=gun.new] at @s unless block ^ ^ ^0.5 #gunblock run tp @s ^ ^ ^0.5
scoreboard players operation @e[tag=gun.new,limit=1] park.uuid = @s park.uuid
scoreboard players set @e[tag=gun.new] PSTJ 25
execute store result score @e[tag=gun.new,limit=1] btw.gunspeed run data get entity @s SelectedItem.components."minecraft:custom_data".speed
tag @e[tag=gun.new] remove gun.new
playsound minecraft:block.piston.contract player @s ~ ~ ~ 1 2 1
item modify entity @s weapon.mainhand usegun

