tag @a[team=elytra,gamemode=adventure] add elytra.tobecalc
tellraw @a[team=elytra] ["\n\u00a76\u00a7l当前飞行距离排行榜"]

function minecraft:elytra/calc/highest
tag @a[tag=elytra.win] remove elytra.tobecalc
execute as @a[tag=elytra.win] run team leave @s
execute as @a[tag=elytra.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@a[tag=elytra.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"elytra.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=elytra.win] run tellraw @a[team=elytra] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"elytra.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=elytra.win] run team join elytra @s
tag @a[tag=elytra.win] remove elytra.win

function minecraft:elytra/calc/highest
tag @a[tag=elytra.win] remove elytra.tobecalc
execute as @a[tag=elytra.win] run team leave @s
execute as @a[tag=elytra.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@a[tag=elytra.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"elytra.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=elytra.win] run tellraw @a[team=elytra] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"elytra.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=elytra.win] run team join elytra @s
tag @a[tag=elytra.win] remove elytra.win

function minecraft:elytra/calc/highest
tag @a[tag=elytra.win] remove elytra.tobecalc
execute as @a[tag=elytra.win] run team leave @s
execute as @a[tag=elytra.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@a[tag=elytra.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"elytra.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=elytra.win] run tellraw @a[team=elytra] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"elytra.max",objective:board},color:"light_purple"},"m)"]}]
execute as @a[tag=elytra.win] run team join elytra @s
tag @a[tag=elytra.win] remove elytra.win
tag @a[tag=elytra.tobecalc] remove elytra.tobecalc
