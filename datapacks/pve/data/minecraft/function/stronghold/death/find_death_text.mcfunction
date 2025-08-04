tag @s add stronghold.flag
tag @e[tag=stronghold.flagged2] remove stronghold.flagged2
execute as @e[tag=stronghold.diedpoint.texts] if score @s park.uuid = @a[tag=stronghold.flag,limit=1] park.uuid run tag @s add stronghold.flagged2

tag @s remove stronghold.flag

# spectate @e[tag=stronghold.diedpoint.new,limit=1] @s
