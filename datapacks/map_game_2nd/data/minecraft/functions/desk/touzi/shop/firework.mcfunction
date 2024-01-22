$execute as @s[tag=touzi.team.a] at @s run function minecraft:desk/touzi/shop/buy/firework {place:$(place),team:a}
playsound block.note_block.pling player @s ~ ~ ~ 1 2 1
$execute as @s[tag=touzi.team.b] at @s run function minecraft:desk/touzi/shop/buy/firework {place:$(place),team:b}