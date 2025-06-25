scoreboard players set pve.stronghold.level board 0
scoreboard players set stronghold.state state 3
scoreboard players set stronghold.debug state 0
tag @a remove stronghold.alive

scoreboard players operation stronghold.difficuly board = stronghold.difficuly state

scoreboard players set stronghold.player tick 0

title @a[team=stronghold] title ["\u00a76游戏开始"]

# execute if score  matches 1.. run function minecraft:stronghold/spec
function minecraft:stronghold/game/auto_difficulty
tag @a[team=stronghold,gamemode=adventure] add stronghold.alive
execute as @a[tag=stronghold.alive] run function minecraft:stronghold/game/normal_equipment

function minecraft:stronghold/game/next_level
scoreboard players set stronghold.time tick 0