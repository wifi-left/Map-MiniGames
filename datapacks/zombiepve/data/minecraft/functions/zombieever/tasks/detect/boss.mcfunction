scoreboard players set zombie.count tick 0
execute as @e[tag=pve.zombie,tag=!pve.root] run scoreboard players add zombie.count tick 1
execute store result bossbar zombie:zombiecount value run scoreboard players get zombie.count tick
execute if entity @e[tag=pve.zombie,type=wither] if score zombie.count tick matches ..7 run function zombieever/rounds/boss_xb