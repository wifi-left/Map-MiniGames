##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute as @e[tag=wolf.tppoint] at @s run fill ~1 ~ ~1 ~-1 ~3 ~-1 air replace minecraft:barrier
scoreboard players set twolf.time state 1
team modify wolfpeople nametagVisibility always

# MOD：
## 0 for nothing; 1 ban other team; 2 ban own team; 4 ban
scoreboard players set wait.wolfpeople BAMBOO_MOD_SAYING 2
scoreboard players set wolfpeople BAMBOO_MOD_SAYING 0

