summon armor_stand ~ ~ ~ {Tags:["stronghold.diedpoint","stronghold.diedpoint.new"],CustomName:{selector:"@s"},CustomNameVisible:1b,NoAI:1b,Glowing:true,Invulnerable:true,NoBasePlate:true,NoGravity:true,ShowArms:false,DisabledSlots:4144896}
summon text_display ~ ~2.6 ~ {Tags:["stronghold.texts","stronghold.diedpoint.texts","stronghold.diedpoint.newtext"],text:[{text:"即将死于",color:gray,bold:false},{color:"green",text:"45"},{text:"秒后",color:gray,bold:false}],alignment:"center",billboard:"vertical"}
# gamemode spectator @s
tag @s add stronghold.e
team leave @s
execute in overworld run data modify block 0 -1 0 back_text.messages[3] set value ["\u00a7b昏倒的",{"selector":"@a[tag=stronghold.e]",color:red}]
team join stronghold @s

tag @s remove stronghold.e
tp @e[tag=stronghold.diedpoint.new,limit=1] @s
item replace entity @e[tag=stronghold.diedpoint.new,limit=1] armor.head from entity @s armor.head
item replace entity @e[tag=stronghold.diedpoint.new,limit=1] armor.chest from entity @s armor.chest
item replace entity @e[tag=stronghold.diedpoint.new,limit=1] armor.legs from entity @s armor.legs
item replace entity @e[tag=stronghold.diedpoint.new,limit=1] armor.feet from entity @s armor.feet
# spectate @e[tag=stronghold.diedpoint.new,limit=1] @s
execute as @e[tag=stronghold.diedpoint.new,limit=1] in overworld run data modify entity @s CustomName set from block 0 -1 0 back_text.messages[3]
scoreboard players operation @e[tag=stronghold.diedpoint.new] park.uuid = @s park.uuid
scoreboard players operation @e[tag=stronghold.diedpoint.newtext] park.uuid = @s park.uuid
# say @e[tag=stronghold.diedpoint.newtext]
tag @e[tag=stronghold.diedpoint.new] remove stronghold.diedpoint.new
tag @e[tag=stronghold.diedpoint.newtext] remove stronghold.diedpoint.newtext
scoreboard players set @s player.board 900