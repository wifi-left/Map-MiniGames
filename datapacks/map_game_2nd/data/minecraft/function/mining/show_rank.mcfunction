tag @a[team=mining,gamemode=survival] add mining.tobecalc
tellraw @a[team=mining] ["\n\u00a76\u00a7l当前金币排行榜"]

function minecraft:mining/calc/highest
tag @a[tag=mining.win] remove mining.tobecalc
execute as @a[tag=mining.win] run team leave @s
execute as @a[tag=mining.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mining.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=mining.win] run tellraw @a[team=mining] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mining.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=mining.win] run team join mining @s
tag @a[tag=mining.win] remove mining.win

function minecraft:mining/calc/highest
tag @a[tag=mining.win] remove mining.tobecalc
execute as @a[tag=mining.win] run team leave @s
execute as @a[tag=mining.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mining.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=mining.win] run tellraw @a[team=mining] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mining.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=mining.win] run team join mining @s
tag @a[tag=mining.win] remove mining.win

function minecraft:mining/calc/highest
tag @a[tag=mining.win] remove mining.tobecalc
execute as @a[tag=mining.win] run team leave @s
execute as @a[tag=mining.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mining.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=mining.win] run tellraw @a[team=mining] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mining.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=mining.win] run team join mining @s
tag @a[tag=mining.win] remove mining.win
tag @a[tag=mining.tobecalc] remove mining.tobecalc
