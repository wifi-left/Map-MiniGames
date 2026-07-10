tag @a[team=pacman,gamemode=adventure] add pacman.tobecalc
tellraw @a[team=pacman] ["\n\u00a76\u00a7l当前金币排行榜"]
function minecraft:pacman/calc/highest
tag @a[tag=pacman.win] remove pacman.tobecalc
execute as @a[tag=pacman.win] run team leave @s
execute as @a[tag=pacman.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@a[tag=pacman.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"pacman.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=pacman.win] run tellraw @a[team=pacman] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"pacman.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=pacman.win] run team join pacman @s
tag @a[tag=pacman.win] remove pacman.win

function minecraft:pacman/calc/highest
tag @a[tag=pacman.win] remove pacman.tobecalc
execute as @a[tag=pacman.win] run team leave @s
execute as @a[tag=pacman.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@a[tag=pacman.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"pacman.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=pacman.win] run tellraw @a[team=pacman] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"pacman.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=pacman.win] run team join pacman @s
tag @a[tag=pacman.win] remove pacman.win

function minecraft:pacman/calc/highest
tag @a[tag=pacman.win] remove pacman.tobecalc
execute as @a[tag=pacman.win] run team leave @s
execute as @a[tag=pacman.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@a[tag=pacman.win]",color:aqua},{text:" (",color:green,extra:["",{score:{name:"pacman.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=pacman.win] run tellraw @a[team=pacman] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"pacman.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=pacman.win] run team join pacman @s
tag @a[tag=pacman.win] remove pacman.win
tag @a[tag=pacman.tobecalc] remove pacman.tobecalc
