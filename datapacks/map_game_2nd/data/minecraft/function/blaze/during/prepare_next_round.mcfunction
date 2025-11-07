scoreboard players set blaze.state state 11
scoreboard players set blaze.time board 6
gamemode adventure @a[team=blaze.team.a,gamemode=!creative]
gamemode adventure @a[team=blaze.team.b,gamemode=!creative]
execute in killerworld run tp @a[team=blaze.team.a] 61 76 375 180 0
execute in killerworld run tp @a[team=blaze.team.b] 61 76 363 0 0
tellraw @a[tag=blaze.player] ["\u00a7b下一局将在\u00a7a5s\u00a7b后开始"]
execute as @a[tag=blaze.player] at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1

effect clear @a[tag=blaze.player]
clear @a[tag=blaze.player]
effect give @a[tag=blaze.player] instant_health 1 25 true
scoreboard players set @a[tag=blaze.player] blaze.coin 50
execute as @a[tag=blaze.player] at @s run tellraw @s [{text:"",bold:false,color:gold},{text:"你已经打了 ",color:aqua,bold:true},{score:{name:"blaze.round",objective:"board"},color:yellow,bold:true},{text:" 局",bold:false,color:aqua},{text:"\n得分情况：",color:gold},{text:"[队伍A] ",color:blue},{score:{name:"blaze.score.a",objective:"board"},color:yellow},{text:"分",color:yellow},{text:" | ",color:gold},{text:"[队伍B] ",color:red},{score:{name:"blaze.score.b",objective:"board"},color:yellow},{text:"分",color:yellow}]
