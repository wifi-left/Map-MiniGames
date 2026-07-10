tag @a[team=mutouren,gamemode=adventure] add mutouren.tobecalc
tellraw @a[team=mutouren] ["\n\u00a76\u00a7l当前距离排行榜"]

function minecraft:mutouren/calc/highest
tag @a[tag=mutouren.win] remove mutouren.tobecalc
execute as @a[tag=mutouren.win] run team leave @s
execute as @a[tag=mutouren.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@a[tag=mutouren.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mutouren.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=mutouren.win] run tellraw @a[team=mutouren] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mutouren.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=mutouren.win] run team join mutouren @s
tag @a[tag=mutouren.win] remove mutouren.win

function minecraft:mutouren/calc/highest
tag @a[tag=mutouren.win] remove mutouren.tobecalc
execute as @a[tag=mutouren.win] run team leave @s
execute as @a[tag=mutouren.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@a[tag=mutouren.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mutouren.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=mutouren.win] run tellraw @a[team=mutouren] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mutouren.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=mutouren.win] run team join mutouren @s
tag @a[tag=mutouren.win] remove mutouren.win

function minecraft:mutouren/calc/highest
tag @a[tag=mutouren.win] remove mutouren.tobecalc
execute as @a[tag=mutouren.win] run team leave @s
execute as @a[tag=mutouren.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@a[tag=mutouren.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mutouren.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=mutouren.win] run tellraw @a[team=mutouren] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"mutouren.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=mutouren.win] run team join mutouren @s
tag @a[tag=mutouren.win] remove mutouren.win
tag @a[tag=mutouren.tobecalc] remove mutouren.tobecalc
