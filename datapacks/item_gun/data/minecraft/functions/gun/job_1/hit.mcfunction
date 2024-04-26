tag @s add sel
execute as @a[team=job_pvp] if score @s park.uuid = @e[tag=sel,limit=1] park.uuid run tag @s add hit.player

damage @a[tag=hitted,limit=1] 1 minecraft:player_gun by @a[tag=hit.player,limit=1]
tellraw @a[tag=hit.player] ["\u00a78你击中了 ",{"selector":"@a[tag=hitted]"}]
tellraw @a[tag=hitted] ["\u00a78你被定住了。"]
title @a[tag=hitted] title ["\u00a7c你被定住了。"]
title @a[tag=hitted] subtitle ["\u00a7e来自 ",{"selector":"@a[tag=hit.player]"}," \u00a7e的技能"]

# effect give @a[tag=hitted] jump_boost 6 128 true
effect give @a[tag=hitted] slowness 6 128 true
effect give @a[tag=hitted] blindness 6 128 true

execute as @a[tag=hitted] at @s run playsound block.chest.close player @s ~ ~ ~ 1 2 0.5
execute as @a[tag=hit.player] at @s run playsound entity.arrow.hit_player player @s ~ ~ ~ 1 1 0.5

tag @a remove hit.player
tag @s remove sel
# say 1
function gun/die 