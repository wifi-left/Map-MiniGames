tag @s add stronghold.flag
tag @e[tag=stronghold.flagged] remove stronghold.flagged
execute as @e[tag=stronghold.diedpoint] if score @s park.uuid = @a[tag=stronghold.flag,limit=1] park.uuid run tag @s add stronghold.flagged

tag @s remove stronghold.flag

# spectate @e[tag=stronghold.diedpoint.new,limit=1] @s
