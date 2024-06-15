gamemode spectator @s
scoreboard players set sw.people tick 0
tp @s 688 40 353 0 90
execute as @a[team=play.sw,gamemode=!spectator] at @s run scoreboard players add sw.people tick 1
tellraw @a[tag=sw.msg] [{"selector":"@s"},"\u00a7c 淘汰了。剩余玩家数量：",{"score":{"name": "sw.people","objective": "tick"},"color": "yellow"}]
execute unless score sw.state state matches 1.. run function minecraft:cloud/join