scoreboard players set stronghold.player tick 0
execute as @a[team=stronghold,gamemode=adventure] run scoreboard players add stronghold.player tick 1

execute if score stronghold.difficulty state matches ..0 if score stronghold.player tick matches ..2 run scoreboard players set stronghold.difficulty board 1
execute if score stronghold.difficulty state matches ..0 if score stronghold.player tick matches 3..5 run scoreboard players set stronghold.difficulty board 2
execute if score stronghold.difficulty state matches ..0 if score stronghold.player tick matches 6..8 run scoreboard players set stronghold.difficulty board 3
execute if score stronghold.difficulty state matches ..0 if score stronghold.player tick matches 9..12 run scoreboard players set stronghold.difficulty board 4
execute if score stronghold.difficulty state matches ..0 if score stronghold.player tick matches 13.. run scoreboard players set stronghold.difficulty board 5