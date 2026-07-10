execute store result score random temp run random value 0..1

execute if score marchant.now temp matches 53 run return run scoreboard players set marchant.now temp 1
execute if score marchant.now temp matches 66 run return run scoreboard players set marchant.now temp 6
execute if score marchant.now temp matches 72 run return run scoreboard players set marchant.now temp 65
execute if score marchant.now temp matches 88 run return run scoreboard players set marchant.now temp 49
execute if score marchant.now temp matches 57 run return run scoreboard players set marchant.now temp 59
execute if score marchant.now temp matches 58 run return run scoreboard players set marchant.now temp 67
execute if score marchant.now temp matches 77 run return run scoreboard players set marchant.now temp 62
execute if score marchant.now temp matches 85 run return run scoreboard players set marchant.now temp 31
execute if score marchant.now temp matches 95 run return run scoreboard players set marchant.now temp 47
execute if score marchant.now temp matches 13 if score random temp matches 1 run return run scoreboard players set marchant.now temp 73
execute if score marchant.now temp matches 32 if score random temp matches 1 run return run scoreboard players set marchant.now temp 54
execute if score marchant.now temp matches 56 if score random temp matches 1 run return run scoreboard players set marchant.now temp 58
execute if score marchant.now temp matches 69 if score random temp matches 1 run return run scoreboard players set marchant.now temp 86
execute if score marchant.now temp matches 20 as @s[y_rotation=45..135] run return run scoreboard players set marchant.now temp 78
execute if score marchant.now temp matches 33 as @s[y_rotation=-45..45] run return run scoreboard players set marchant.now temp 89
execute if score marchant.now temp matches 76 as @s[y_rotation=135..-135] run return run scoreboard players set marchant.now temp 79
scoreboard players add marchant.now temp 1