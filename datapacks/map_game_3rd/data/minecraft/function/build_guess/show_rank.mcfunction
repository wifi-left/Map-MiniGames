tag @a[team=build_guess,tag=!GLOBAL.SPEC] add build_guess.tobecalc
tellraw @a[team=build_guess] ["\n\u00a76\u00a7l当前金币排行榜"]
function minecraft:build_guess/calc/highest
tag @a[tag=build_guess.win] remove build_guess.tobecalc
execute as @a[tag=build_guess.win] run team leave @s
execute as @a[tag=build_guess.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@a[tag=build_guess.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_guess.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_guess.win] run tellraw @a[team=build_guess] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_guess.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_guess.win] run team join build_guess @s
tag @a[tag=build_guess.win] remove build_guess.win

function minecraft:build_guess/calc/highest
tag @a[tag=build_guess.win] remove build_guess.tobecalc
execute as @a[tag=build_guess.win] run team leave @s
execute as @a[tag=build_guess.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@a[tag=build_guess.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_guess.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_guess.win] run tellraw @a[team=build_guess] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_guess.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_guess.win] run team join build_guess @s
tag @a[tag=build_guess.win] remove build_guess.win

function minecraft:build_guess/calc/highest
tag @a[tag=build_guess.win] remove build_guess.tobecalc
execute as @a[tag=build_guess.win] run team leave @s
execute as @a[tag=build_guess.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@a[tag=build_guess.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_guess.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_guess.win] run tellraw @a[team=build_guess] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"build_guess.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=build_guess.win] run team join build_guess @s
tag @a[tag=build_guess.win] remove build_guess.win
tag @a[tag=build_guess.tobecalc] remove build_guess.tobecalc
