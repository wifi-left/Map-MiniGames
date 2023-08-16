tag @e remove nbs_nbssummer
scoreboard objectives remove nbs_nbssummer
scoreboard objectives remove nbs_nbssummer_t
datapack disable "file/nbs_summer.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"nbs_summer.zip","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]