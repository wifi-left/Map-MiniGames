scoreboard players set golds temp 0
execute store result score golds temp run clear @s gold_ingot 0
execute if score golds temp matches 10.. run give @s bow{ms:1,Enchantments:[{id:"infinity",lvl:1s},{id:"power",lvl:2s}],Unbreakable:1b,HideFlags:63,dtb:1b}
execute if score golds temp matches 10.. run tag @s add killer.saver
execute if score golds temp matches 10.. run clear @s gold_ingot 10
execute if score golds temp matches 10.. run tellraw @s ["\u00a7e10 Gold \u00a7b兑换了 \u00a7a1 把 弓。"]
function killerever/action/check_if_get_bow_pm