##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players operation @s kill += @s job_kill
execute if score @s job_kill matches ..1 run title @s actionbar ["\u00a76+",{"score":{"name": "@s","objective": "job_kill"},"color":"gold"}," \u00a76Kill \u00a7b(Total: ",{"score":{"name": "@s","objective": "kill"},"color":"green"},"\u00a7b)"]
execute if score @s job_kill matches 2.. run title @s actionbar ["\u00a76+",{"score":{"name": "@s","objective": "job_kill"},"color":"gold"}," \u00a76Kills \u00a7b(Total: ",{"score":{"name": "@s","objective": "kill"},"color":"green"},"\u00a7b)"]
scoreboard players reset @s job_kill
