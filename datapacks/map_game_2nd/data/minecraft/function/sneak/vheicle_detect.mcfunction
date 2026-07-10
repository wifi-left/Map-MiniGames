tag @s remove sneak.v.ok
scoreboard players set sneak.ok.1 temp 0
execute on passengers run scoreboard players set sneak.ok.1 temp 1
execute if score sneak.ok.1 temp matches 1 run tag @s add sneak.v.ok