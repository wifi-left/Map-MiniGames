tag @a[team=t_says,gamemode=adventure] add t_says.tobecalc
tellraw @a[team=t_says] ["\n\u00a76\u00a7l当前金币排行榜"]
function minecraft:t_says/calc/highest
tag @a[tag=t_says.win] remove t_says.tobecalc
execute as @a[tag=t_says.win] run team leave @s
execute as @a[tag=t_says.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@a[tag=t_says.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"t_says.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=t_says.win] run tellraw @a[team=t_says] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"t_says.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=t_says.win] run team join t_says @s
tag @a[tag=t_says.win] remove t_says.win

function minecraft:t_says/calc/highest
tag @a[tag=t_says.win] remove t_says.tobecalc
execute as @a[tag=t_says.win] run team leave @s
execute as @a[tag=t_says.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@a[tag=t_says.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"t_says.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=t_says.win] run tellraw @a[team=t_says] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"t_says.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=t_says.win] run team join t_says @s
tag @a[tag=t_says.win] remove t_says.win

function minecraft:t_says/calc/highest
tag @a[tag=t_says.win] remove t_says.tobecalc
execute as @a[tag=t_says.win] run team leave @s
execute as @a[tag=t_says.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@a[tag=t_says.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"t_says.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=t_says.win] run tellraw @a[team=t_says] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"t_says.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=t_says.win] run team join t_says @s
tag @a[tag=t_says.win] remove t_says.win
tag @a[tag=t_says.tobecalc] remove t_says.tobecalc
