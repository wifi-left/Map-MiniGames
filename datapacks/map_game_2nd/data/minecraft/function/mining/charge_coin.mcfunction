scoreboard players set mining.coin.total temp 0

execute store result score mining.coin temp run clear @s dirt
scoreboard players set mining.coin.mutiplied temp 1
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s clay
scoreboard players set mining.coin.mutiplied temp 2
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s gravel
scoreboard players set mining.coin.mutiplied temp 3
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s deepslate_lapis_ore
scoreboard players set mining.coin.mutiplied temp 10
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s deepslate_redstone_ore
scoreboard players set mining.coin.mutiplied temp 10
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s deepslate_copper_ore
scoreboard players set mining.coin.mutiplied temp 5
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:coal_ore
scoreboard players set mining.coin.mutiplied temp 5
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:deepslate_coal_ore
scoreboard players set mining.coin.mutiplied temp 5
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:diamond_ore
scoreboard players set mining.coin.mutiplied temp 10
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:deepslate_diamond_ore
scoreboard players set mining.coin.mutiplied temp 15
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:emerald_ore
scoreboard players set mining.coin.mutiplied temp 15
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:deepslate_emerald_ore
scoreboard players set mining.coin.mutiplied temp 20
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:gold_ore
scoreboard players set mining.coin.mutiplied temp 10
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:iron_ore
scoreboard players set mining.coin.mutiplied temp 10
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:deepslate_iron_ore
scoreboard players set mining.coin.mutiplied temp 15
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:lapis_ore
scoreboard players set mining.coin.mutiplied temp 15
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:deepslate_lapis_ore
scoreboard players set mining.coin.mutiplied temp 15
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:redstone_ore
scoreboard players set mining.coin.mutiplied temp 5
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s deepslate_gold_ore
scoreboard players set mining.coin.mutiplied temp 5
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:deepslate
scoreboard players set mining.coin.mutiplied temp 5
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s minecraft:tuff
scoreboard players set mining.coin.mutiplied temp 5
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s grass_block
scoreboard players set mining.coin.mutiplied temp 1
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

execute store result score mining.coin temp run clear @s stone
scoreboard players set mining.coin.mutiplied temp 5
scoreboard players operation mining.coin.mutiplied temp *= mining.coin temp
scoreboard players operation mining.coin.total temp += mining.coin.mutiplied temp

title @s actionbar ["\u00a76+ ",{score:{name:"mining.coin.total",objective:temp},color:gold},"\u00a76 金币 \u00a78| ","\u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"mining.time",objective:"tick"},color:aqua},"\u00a7bs"]
function minecraft:mining/give_coin_dfs
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1