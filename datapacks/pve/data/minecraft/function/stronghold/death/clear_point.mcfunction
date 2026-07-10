function minecraft:stronghold/death/find_deathpoint
function minecraft:stronghold/death/find_death_text
scoreboard players reset @e[tag=stronghold.flagged]
scoreboard players reset @e[tag=stronghold.flagged2]
kill @e[tag=stronghold.flagged]
kill @e[tag=stronghold.flagged2]
tag @e[tag=stronghold.flagged] remove stronghold.flagged
tag @e[tag=stronghold.flagged2] remove stronghold.flagged2
