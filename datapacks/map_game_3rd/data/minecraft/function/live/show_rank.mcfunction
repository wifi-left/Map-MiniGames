tag @a[team=live,gamemode=adventure] add live.tobecalc
tellraw @a[team=live] ["\n\u00a76\u00a7l当前金币排行榜"]
function minecraft:live/calc/highest
tag @a[tag=live.win] remove live.tobecalc
execute as @a[tag=live.win] run team leave @s
execute as @a[tag=live.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@a[tag=live.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"live.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=live.win] run tellraw @a[team=live] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"live.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=live.win] run team join live @s
tag @a[tag=live.win] remove live.win

function minecraft:live/calc/highest
tag @a[tag=live.win] remove live.tobecalc
execute as @a[tag=live.win] run team leave @s
execute as @a[tag=live.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@a[tag=live.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"live.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=live.win] run tellraw @a[team=live] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"live.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=live.win] run team join live @s
tag @a[tag=live.win] remove live.win

function minecraft:live/calc/highest
tag @a[tag=live.win] remove live.tobecalc
execute as @a[tag=live.win] run team leave @s
execute as @a[tag=live.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@a[tag=live.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"live.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=live.win] run tellraw @a[team=live] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"live.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=live.win] run team join live @s
tag @a[tag=live.win] remove live.win
tag @a[tag=live.tobecalc] remove live.tobecalc
