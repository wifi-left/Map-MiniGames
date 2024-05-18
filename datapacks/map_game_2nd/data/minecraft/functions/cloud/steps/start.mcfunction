execute in airworld as @e[tag=sw.spawn] at @s run function minecraft:cloud/removeglass
scoreboard players set cloud.step board 2
scoreboard players set cloud.countdown board 120
title @a[tag=sw.msg] title ["\u00a7f\u00a7lCloudwars"]
title @a[tag=sw.msg] subtitle ["\u00a7a游戏开始！"]
tellraw @a[tag=sw.msg] ["\u00a7a游戏开始！"]
execute as @a[tag=sw.msg] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
effect give @a[team=play.sw,gamemode=adventure] slow_falling 1 0 true
execute as @a[team=play.sw,gamemode=adventure] at @s run tp @s ~ ~-8 ~
gamemode survival @a[team=play.sw,gamemode=adventure]
function minecraft:cloud/chests/fillitems

execute if score sw.mode state matches ..1 as @a[team=play.sw] at @s run item replace entity @s armor.head with leather_helmet[enchantments={"blast_protection":10,"binding_curse":1},unbreakable={}]