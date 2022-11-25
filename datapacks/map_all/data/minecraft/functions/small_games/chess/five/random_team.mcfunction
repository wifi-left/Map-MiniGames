tag @r[tag=chess.ranteam] add chess.ransel
scoreboard players add rand board 1
execute if score rand board matches 3.. run scoreboard players set rand board 1
execute if score rand board matches ..1 run tag @s add chess.black
execute if score rand board matches 2.. run tag @s add chess.white
tag @a[tag=chess.ransel] remove chess.ranteam
tag @a[tag=chess.ransel] remove chess.ransel
