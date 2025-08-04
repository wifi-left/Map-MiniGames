##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
# execute as @e[type=marker,tag=lpark] at @s run data merge entity @s {Duration:2147483647,Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Radius:0f}
execute in parkourworld run spawnpoint @a[team=parkour] 8 4 8 0
effect give @a[team=parkour] resistance 5 25 true
effect give @a[team=parkour] fire_resistance 5 25 true

item replace entity @a[team=parkour,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{park:1}}}]}] hotbar.4 with carrot_on_a_stick[unbreakable={},enchantments={"minecraft:unbreaking":1},custom_name="\u00a7aCheckpoint \u00a77(Right click)",lore=["\u00a7bReturn to parkour checkpoint"],custom_data={park:1},custom_model_data={floats:[5f]}]



