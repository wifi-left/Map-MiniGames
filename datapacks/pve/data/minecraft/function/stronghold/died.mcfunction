# say 我死了
tag @s add stronghold.died.waiting
function minecraft:stronghold/death/died_after_screen
execute as @s[tag=stronghold.died.waiting] run function minecraft:stronghold/death/true