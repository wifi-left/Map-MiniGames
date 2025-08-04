kill @s
$scoreboard players set stronghold.gold.target board $(gold)
particle dust_color_transition{from_color:[1,0,0],to_color:[0,0,1],scale:1} ~ ~2 ~ 0.2 0.2 0.2 1 20 normal
function minecraft:stronghold/special/spawn_gold