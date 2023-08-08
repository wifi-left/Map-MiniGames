tag @s add sel
execute as @a[team=job_pvp] if score @s park.uuid = @e[tag=sel,limit=1] park.uuid run tag @s add hit.player

damage @a[tag=hitted,limit=1] 1 minecraft:sonic_boom by @a[tag=hit.player,limit=1]

tellraw @a[tag=hit.player] ["\u00a78你与 ",{"selector":"@a[tag=hitted]"}," \u00a78交换了位置。"]
tellraw @a[tag=hitted] ["\u00a78你与 ",{"selector":"@a[tag=hit.player]"}," 交换了位置。"]
title @a[tag=hitted] title ["\u00a7c你交换了位置。"]
title @a[tag=hitted] subtitle ["\u00a7e来自 ",{"selector":"@a[tag=hit.player]"}," \u00a7e的技能"]

# effect give @a[tag=hitted] jump_boost 6 128 true
# effect give @a[tag=hitted] levitation 1 25 true
execute as @a[tag=hitted] at @s run summon marker ~ ~ ~ {Tags:["pvp.tptmp"]}
tp @e[type=marker,tag=pvp.tptmp,limit=1] @a[tag=hitted,limit=1]
execute as @a[tag=hitted] run tp @s @a[tag=hit.player,limit=1]
execute as @a[tag=hit.player] run tp @s @e[tag=pvp.tptmp,limit=1]
# effect give @a[tag=hitted] blindness 2 128 true

kill @e[type=marker,tag=pvp.tptmp]
execute as @a[tag=hitted] at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 0.5
execute as @a[tag=hit.player] at @s run playsound entity.enderman.teleport player @s ~ ~ ~ 1 1 0.5

tag @a remove hit.player
tag @s remove sel
# say 1
function gun/die