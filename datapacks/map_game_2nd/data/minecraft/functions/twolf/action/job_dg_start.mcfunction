$scoreboard players operation wolf.$(job) board = wolf.$(job) state
$execute if score wolf.$(job) board matches 1.. run function minecraft:twolf/action/job_dg {job:$(job)}
