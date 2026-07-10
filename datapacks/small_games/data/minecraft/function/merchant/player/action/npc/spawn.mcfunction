team leave @s
tag @s add merchant.sel
execute in overworld run data modify block 0 -1 0 back_text.messages[3] set value [{selector:"@a[tag=merchant.sel]",color:gold}]
tag @s remove merchant.sel
team join deskgame @s
summon armor_stand ~ ~ ~ {Tags:["merchant.new","merchant.npc"],CustomName:["玩家"],CustomNameVisible:1b,Invulnerable:1b,Silent:1b,NoGravity:1b,Invisible:true,NoBasePlate:true,Small:true}
execute as @e[tag=merchant.new] in overworld run data modify entity @s CustomName set from block 0 -1 0 back_text.messages[3]
execute as @e[tag=merchant.new] run data modify entity @s equipment.head set value {id:"player_head"}
item modify entity @e[tag=merchant.new] armor.head minecraft:gethead
execute as @e[tag=merchant.new] run data modify entity @s equipment.chest set value {id:"leather_chestplate",components:{dyed_color:772875}}
execute as @e[tag=merchant.new] run data modify entity @s equipment.legs set value {id:"leather_leggings",components:{dyed_color:7719691}}
execute as @e[tag=merchant.new] run data modify entity @s equipment.feet set value {id:"leather_boots",components:{dyed_color:12110603}}
execute as @e[tag=merchant.new] run data merge entity @s {DisabledSlots:2039583}
scoreboard players operation @e[tag=merchant.new] park.uuid = @s park.uuid
tag @e[tag=merchant.new] remove merchant.new