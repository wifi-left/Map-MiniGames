
scoreboard players set blockrace.state state 100
schedule function minecraft:blockrace/over/tp 5s replace

tellraw @a ["§a§l[MESSAGE]§r ",{bold:true,color:"#11ffaf",text:"方块竞速"},"§c游戏结束。"]
tellraw @a[team=blockrace] ["\u00a7e你将在 \u00a7c5s \u00a7e后传送。"]
execute as @a[team=blockrace,gamemode=adventure] run gamemode spectator @s
schedule clear minecraft:blockrace/try_reset
team modify blockrace friendlyFire false