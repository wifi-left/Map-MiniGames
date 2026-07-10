tag @a[team=finder,gamemode=adventure] add finder.tobecalc
tellraw @a[team=finder] ["\n\u00a76\u00a7l当前金币排行榜"]

function minecraft:finder/calc/highest
tag @a[tag=finder.win] remove finder.tobecalc
execute as @a[tag=finder.win] run team leave @s
execute as @a[tag=finder.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@a[tag=finder.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"finder.max",objective:board},color:"light_purple"},"个彩蛋)"]}]
execute as @a[tag=finder.win] run tellraw @a[team=finder] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"finder.max",objective:board},color:"light_purple"},"个彩蛋)"]}]
execute as @a[tag=finder.win] run team join finder @s
tag @a[tag=finder.win] remove finder.win

function minecraft:finder/calc/highest
tag @a[tag=finder.win] remove finder.tobecalc
execute as @a[tag=finder.win] run team leave @s
execute as @a[tag=finder.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@a[tag=finder.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"finder.max",objective:board},color:"light_purple"},"个彩蛋)"]}]
execute as @a[tag=finder.win] run tellraw @a[team=finder] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"finder.max",objective:board},color:"light_purple"},"个彩蛋)"]}]
execute as @a[tag=finder.win] run team join finder @s
tag @a[tag=finder.win] remove finder.win

function minecraft:finder/calc/highest
tag @a[tag=finder.win] remove finder.tobecalc
execute as @a[tag=finder.win] run team leave @s
execute as @a[tag=finder.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@a[tag=finder.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"finder.max",objective:board},color:"light_purple"},"个彩蛋)"]}]
execute as @a[tag=finder.win] run tellraw @a[team=finder] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"finder.max",objective:board},color:"light_purple"},"个彩蛋)"]}]
execute as @a[tag=finder.win] run team join finder @s
tag @a[tag=finder.win] remove finder.win
tag @a[tag=finder.tobecalc] remove finder.tobecalc
