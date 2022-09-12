tellraw @a ["\u00a7a\u00a7l[MESSAGE] ",{"selector":"@s"},"\u00a77 joined \u00a79\u00a7lBedwars\u00a77 ."]
tp @s -302 76 210 0 0
execute if score bw.state state matches 1.. run function bedwars/message/spec
execute if score bw.state state matches ..-1 run tellraw @s ["\n\u00a7e您已加入队列。\n"]
execute if score bw.state state matches ..-1 run gamemode spectator @s
team join bw.wait @s