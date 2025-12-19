tag @a[tag=UUID.sel] remove UUID.sel

function minecraft:finder/interact/left
function minecraft:finder/interact/right
execute unless entity @a[tag=UUID.sel] run return fail
execute as @a[tag=UUID.sel] at @s run function minecraft:finder/charge_coin
execute at @s run function minecraft:finder/egg_was_found
tag @a[tag=UUID.sel] remove UUID.sel