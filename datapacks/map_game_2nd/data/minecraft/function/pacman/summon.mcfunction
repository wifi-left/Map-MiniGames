fill -115 -60 -289 -183 -60 -221 gold_block replace white_concrete
scoreboard players set pacman.state state 1
execute as @a[team=pacman] at @s run playsound entity.player.levelup player @s ~ ~ ~ 1 1 1
scoreboard players set pacman.player tick 0
execute as @a[team=pacman,gamemode=adventure] run scoreboard players add pacman.player tick 1

tellraw @a [{text:""}]

execute as @a[team=pacman,tag=pacman.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:pacman/become_killer
execute if score pacman.player tick matches 6.. as @a[team=pacman,tag=pacman.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:pacman/become_killer
execute if score pacman.player tick matches 12.. as @a[team=pacman,tag=pacman.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:pacman/become_killer
execute if score pacman.player tick matches 18.. as @a[team=pacman,tag=pacman.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:pacman/become_killer
execute if score pacman.player tick matches 24.. as @a[team=pacman,tag=pacman.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:pacman/become_killer
execute if score pacman.player tick matches 30.. as @a[team=pacman,tag=pacman.nokiller,limit=1,sort=random,gamemode=adventure] at @s run function minecraft:pacman/become_killer
execute unless entity @a[team=pacman.killer,gamemode=adventure] run function minecraft:pacman/over
tellraw @a [{text:""}]

scoreboard players set pacman.time board 61