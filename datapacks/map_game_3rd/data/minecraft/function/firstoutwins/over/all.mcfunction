
scoreboard players set firstoutwins.state state 100
schedule function minecraft:firstoutwins/over/tp 5s replace

tellraw @a ["§a§l[MESSAGE]§r ",{bold:true,color:"#A8C3A6",text:"谢幕者胜"},"§c游戏结束。"]
tellraw @a[team=firstoutwins] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
execute as @a[team=firstoutwins,gamemode=adventure] run gamemode spectator @s
schedule clear minecraft:firstoutwins/try_reset
team modify firstoutwins friendlyFire false