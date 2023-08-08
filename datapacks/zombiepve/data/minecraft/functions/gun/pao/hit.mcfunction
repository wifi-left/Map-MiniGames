
tag @s add sel
execute as @a[team=play.zombie] if score @s park.uuid = @e[tag=sel,limit=1] park.uuid run tag @s add hit.player
execute as @e[tag=hitted] unless data entity @s {Invulnerable:1b} run damage @s 0.1 minecraft:player_gun by @a[tag=hit.player,limit=1]
execute as @e[tag=hitted] run execute as @e[tag=sel,limit=1] at @s run function gun/pao/foreach
function gun/die 
