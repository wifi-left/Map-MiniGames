##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
scoreboard players set golds temp 0
execute store result score golds temp run clear @s gold_ingot 0
execute if score golds temp matches 10.. run give @s bow[custom_data={ms:1,dtb:1b},enchantments={levels:{"minecraft:infinity":1s,"minecraft:power":2s},show_in_tooltip:false},unbreakable={show_in_tooltip:false}]
execute if score golds temp matches 10.. run tag @s add killer.saver
execute if score golds temp matches 10.. run clear @s gold_ingot 10
execute if score golds temp matches 10.. run tellraw @s ["\u00a7e10 Gold \u00a7b兑换了 \u00a7a1 把 弓。"]
function killerever/action/check_if_get_bow_pm
