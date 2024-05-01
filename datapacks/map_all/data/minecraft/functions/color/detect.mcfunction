##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set color.state state 1
execute as @a[team=play.color] at @s run playsound entity.generic.explode player @s ~ ~ ~ 1 1.5 1

execute positioned -52 35 64 run function minecraft:color/ran_fill/3_whichblock
function color/block_fall with storage minecraft:temp
# execute as @a[team=play.color,gamemode=adventure] at @s unless blocks ~ ~-1 ~ ~ ~-1 ~ -52 35 64 all run function color/died
tellraw @a[team=wait.color] ["\u00a77方块掉落！"]
tellraw @a[team=play.color] ["\u00a77方块掉落！"]
schedule function minecraft:color/summon 5s
