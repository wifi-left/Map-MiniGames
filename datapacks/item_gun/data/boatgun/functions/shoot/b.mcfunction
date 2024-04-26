summon marker ~ ~ ~ {Tags:["boat.gun.line","gun.new"],data:{team:2}}
tp @e[tag=gun.new] @s
tp @e[tag=gun.new] ~ ~1.6 ~
scoreboard players operation @e[tag=gun.new,limit=1] btw.gunspeed = @s btw.gunspeed
execute as @e[tag=gun.new] at @s unless block ^ ^ ^0.5 #gunblock run tp @s ^ ^ ^0.5
scoreboard players operation @e[tag=gun.new,limit=1] park.uuid = @s park.uuid
scoreboard players set @e[tag=gun.new] PSTJ 24
tag @e[tag=gun.new] remove gun.new
playsound minecraft:block.piston.contract player @s ~ ~ ~ 1 2 1
# item modify entity @s weapon.mainhand usegun