execute if score merchant.touzi.type board matches 1 store result score merchant.jump.step board run random value 1..6
execute if score merchant.touzi.type board matches 2 store result score merchant.jump.step board run random value 1..3
execute if score merchant.touzi.type board matches 3 store result score merchant.jump.step board run random value 1..12
tellraw @s ["\u00a76你可以走[",{score:{objective:"board",name:"merchant.jump.step"},color:aqua},"\u00a76]步。"]
title @s title ["\u00a76你抽到了[",{score:{objective:"board",name:"merchant.jump.step"},color:aqua},"\u00a76]"]
title @s subtitle ["\u00a7f你可以走[",{score:{objective:"board",name:"merchant.jump.step"},color:aqua},"\u00a7f]步。"]
title @a[team=deskgame] actionbar [{bold:true,color:gold,translate:"[%s]",fallback:"[%s]",with:[{score:{name:"merchant.jump.step",objective:"board"},color:green}]}]
tellraw @a[team=deskgame] [{selector:"@s"},"\u00a76抽到了[",{score:{objective:"board",name:"merchant.jump.step"},color:aqua},"\u00a76]步。"]

tellraw @s ["\u00a7e提示：\u00a7a使用空格键进行移动。"]
scoreboard players set desk.state state 4
scoreboard players set desk.time board 31