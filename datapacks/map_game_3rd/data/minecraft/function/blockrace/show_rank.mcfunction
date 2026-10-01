tag @a[team=blockrace,gamemode=survival] add blockrace.tobecalc
tellraw @a[team=blockrace] ["\n\u00a76\u00a7l当前前进距离排行榜"]

function minecraft:blockrace/calc/highest
tag @a[tag=blockrace.rankwin] remove blockrace.tobecalc
execute as @a[tag=blockrace.rankwin] run team leave @s
execute as @a[tag=blockrace.rankwin] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@a[tag=blockrace.rankwin]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"blockrace.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=blockrace.rankwin] run tellraw @a[team=blockrace] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"blockrace.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=blockrace.rankwin] run team join blockrace @s
tag @a[tag=blockrace.rankwin] remove blockrace.rankwin

function minecraft:blockrace/calc/highest
tag @a[tag=blockrace.rankwin] remove blockrace.tobecalc
execute as @a[tag=blockrace.rankwin] run team leave @s
execute as @a[tag=blockrace.rankwin] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@a[tag=blockrace.rankwin]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"blockrace.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=blockrace.rankwin] run tellraw @a[team=blockrace] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"blockrace.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=blockrace.rankwin] run team join blockrace @s
tag @a[tag=blockrace.rankwin] remove blockrace.rankwin

function minecraft:blockrace/calc/highest
tag @a[tag=blockrace.rankwin] remove blockrace.tobecalc
execute as @a[tag=blockrace.rankwin] run team leave @s
execute as @a[tag=blockrace.rankwin] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@a[tag=blockrace.rankwin]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"blockrace.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=blockrace.rankwin] run tellraw @a[team=blockrace] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"blockrace.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=blockrace.rankwin] run team join blockrace @s
tag @a[tag=blockrace.rankwin] remove blockrace.rankwin
tag @a[tag=blockrace.tobecalc] remove blockrace.tobecalc
