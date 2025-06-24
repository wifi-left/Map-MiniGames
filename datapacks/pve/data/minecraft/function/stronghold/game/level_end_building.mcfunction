# say level end
clone 177 -28 152 173 -34 156 ~7 ~ ~7 strict
summon text_display ~9 ~4 ~9 {text:[{text:"结束探索",color:gold,bold:true},{text:" - 传送门",color:gray,bold:false}],Tags:["stronghold.texts"],alignment:"center",billboard:"vertical"}
particle minecraft:explosion ~9 ~3 ~9 1 1 1 1 10 normal
execute positioned ~9 ~3 ~9 run playsound minecraft:entity.generic.explode block @a[team=stronghold] ~ ~ ~ 1 1 0
title @a[team=stronghold] subtitle ["本层传送门已开启"]
scoreboard players set stronghold.state state 2
