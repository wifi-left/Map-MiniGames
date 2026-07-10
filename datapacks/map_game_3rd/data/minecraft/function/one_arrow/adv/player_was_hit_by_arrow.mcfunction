advancement revoke @s only one_arrow/player_was_hit_arrow
execute unless entity @s[gamemode=adventure] run return fail
execute if data entity @s active_effects[{id:"minecraft:resistance"}] run return fail
tellraw @s ["\u00a7c你被一箭毙命了。"]
function minecraft:one_arrow/died