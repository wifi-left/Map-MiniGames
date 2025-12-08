tag @a[team=fishing,gamemode=adventure] add fishing.tobecalc
tellraw @a[team=fishing] ["\n\u00a76\u00a7l当前金币排行榜"]

function minecraft:fishing/calc/highest
tag @a[tag=fishing.win] remove fishing.tobecalc
execute as @a[tag=fishing.win] run team leave @s
execute as @a[tag=fishing.win] run tellraw @s ["\u00a7a第一名（你）：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"fishing.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=fishing.win] run tellraw @a[team=fishing] ["\u00a7a第一名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"fishing.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=fishing.win] run team join fishing @s
tag @a[tag=fishing.win] remove fishing.win

function minecraft:fishing/calc/highest
tag @a[tag=fishing.win] remove fishing.tobecalc
execute as @a[tag=fishing.win] run team leave @s
execute as @a[tag=fishing.win] run tellraw @s ["\u00a7e第二名（你）：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"fishing.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=fishing.win] run tellraw @a[team=fishing] ["\u00a7e第二名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"fishing.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=fishing.win] run team join fishing @s
tag @a[tag=fishing.win] remove fishing.win

function minecraft:fishing/calc/highest
tag @a[tag=fishing.win] remove fishing.tobecalc
execute as @a[tag=fishing.win] run team leave @s
execute as @a[tag=fishing.win] run tellraw @s ["\u00a7d第三名（你）：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"fishing.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=fishing.win] run tellraw @a[team=fishing] ["\u00a7d第三名：",{selector:"@s",color:aqua},{text:" (",color:green,extra:["",{score:{name:"fishing.max",objective:board},color:"light_purple"},"分)"]}]
execute as @a[tag=fishing.win] run team join fishing @s
tag @a[tag=fishing.win] remove fishing.win
tag @a[tag=fishing.tobecalc] remove fishing.tobecalc
