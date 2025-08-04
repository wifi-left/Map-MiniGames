##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

tag @s add sel
execute as @a[team=hide.play.hun] if score @s park.uuid = @e[tag=sel,limit=1] park.uuid run tag @s add hit.player
execute as @a[tag=hitted] unless data entity @s {Invulnerable:1b} run damage @s 7 minecraft:player_gun by @a[tag=hit.player,limit=1]

execute as @a[tag=hitted] at @s run function gun/hideseek_mace/foreach
tag @s remove sel

tag @a[tag=hit.player] remove hit.player
function gun/die