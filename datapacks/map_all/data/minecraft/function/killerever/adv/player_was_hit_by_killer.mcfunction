advancement revoke @s only killerever/player_was_hit
execute unless entity @s[team=play.killer,gamemode=adventure] run return fail
execute if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run return fail
kill @s