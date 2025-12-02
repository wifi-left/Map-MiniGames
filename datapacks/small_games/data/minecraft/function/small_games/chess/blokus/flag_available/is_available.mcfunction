$execute if block ~1 ~ ~ $(block) run return fail
$execute if block ~ ~ ~1 $(block) run return fail
$execute if block ~-1 ~ ~ $(block) run return fail
$execute if block ~ ~ ~-1 $(block) run return fail
execute if block ~ ~ ~ black_stained_glass run scoreboard players add chess.canplace temp 1
execute if block ~ ~ ~ black_stained_glass run fill ~ ~ ~ ~ ~ ~ glass replace black_stained_glass