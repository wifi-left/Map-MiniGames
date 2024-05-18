tellraw @a[tag=sw.msg] ["\u00a7a箱子已经补给！"]
function minecraft:cloud/chests/fillitems
scoreboard players add cloud.step board 1
scoreboard players set cloud.countdown board 240
execute as @a[tag=sw.msg] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 2 1
