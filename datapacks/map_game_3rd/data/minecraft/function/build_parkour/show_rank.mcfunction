tag @a[team=build_parkour,tag=!GLOBAL.SPEC] add build_parkour.tobecalc
tellraw @a[team=build_parkour] ["\n\u00a76\u00a7l当前金币排行榜"]
function minecraft:build_parkour/calc/highest
tag @a[tag=build_parkour.win] remove build_parkour.tobecalc
execute as @a[tag=build_parkour.win] run team leave @s
execute as @a[tag=build_parkour.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@a[tag=build_parkour.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_parkour.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_parkour.win] run tellraw @a[team=build_parkour] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_parkour.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_parkour.win] run team join build_parkour @s
tag @a[tag=build_parkour.win] remove build_parkour.win

function minecraft:build_parkour/calc/highest
tag @a[tag=build_parkour.win] remove build_parkour.tobecalc
execute as @a[tag=build_parkour.win] run team leave @s
execute as @a[tag=build_parkour.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@a[tag=build_parkour.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_parkour.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_parkour.win] run tellraw @a[team=build_parkour] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_parkour.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_parkour.win] run team join build_parkour @s
tag @a[tag=build_parkour.win] remove build_parkour.win

function minecraft:build_parkour/calc/highest
tag @a[tag=build_parkour.win] remove build_parkour.tobecalc
execute as @a[tag=build_parkour.win] run team leave @s
execute as @a[tag=build_parkour.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@a[tag=build_parkour.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_parkour.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_parkour.win] run tellraw @a[team=build_parkour] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_parkour.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_parkour.win] run team join build_parkour @s
tag @a[tag=build_parkour.win] remove build_parkour.win
tag @a[tag=build_parkour.tobecalc] remove build_parkour.tobecalc
