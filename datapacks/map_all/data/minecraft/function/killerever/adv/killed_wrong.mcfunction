advancement revoke @s only killerever/innocent_kill_wrong_player
execute as @s[tag=killer.saver] at @s run function minecraft:killerever/adv/saver_died
tellraw @s ["\u00a7c你杀错人，所以淘汰了。"]
function minecraft:killerever/died