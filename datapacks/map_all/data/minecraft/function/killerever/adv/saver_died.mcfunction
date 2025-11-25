advancement revoke @s only killerever/player_was_killed
tellraw @a[team=play.killer] ["\u00a76一名侦探死亡。他的弓已掉落！"]
execute at @s run summon armor_stand ~ ~ ~ {CustomName:["\u00a7a\u00a7l弓\u00a77 - 右键获取"],Marker:0b,CustomNameVisible:1b,Invisible:true,Invulnerable:1b,Silent:1b,NoGravity:1b,Glowing:1b,Tags:["killer.bow","killer.new"],equipment:{mainhand:{id:"minecraft:crossbow",count:1,components:{"minecraft:custom_data":{killer:1,killer.job:to_be_saver}}}},DisabledSlots:15935,NoBasePlate:true}
item modify entity @e[limit=1,tag=killer.new] armor.head gethead
tag @e[tag=killer.new] remove killer.new