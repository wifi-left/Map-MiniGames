scoreboard players set fishing.coin.total temp 0

execute store result score fishing.coin temp run clear @s cod
scoreboard players set fishing.coin.mutiplied temp 3
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76鱼上钩了！你获得了[",{translate:"item.minecraft.cod",color:aqua},"\u00a76]"]
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s salmon
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76鱼上钩了！你获得了[",{translate:"item.minecraft.salmon",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 6
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s tropical_fish
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76鱼上钩了！你获得了[",{translate:"item.minecraft.tropical_fish",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 10
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s pufferfish
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76鱼上钩了！你获得了[",{translate:"item.minecraft.pufferfish",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 8
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s lily_pad
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个垃圾：[",{translate:"block.minecraft.lily_pad",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 1
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s leather_boots
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个好一点点的垃圾：[",{translate:"item.minecraft.leather_boots",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 3
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:leather
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个好一点点的垃圾：[",{translate:"item.minecraft.leather",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 3
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:bone
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个好一点点的垃圾：[",{translate:"item.minecraft.bone",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 3
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:potion
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个好一点点的垃圾：[",{translate:"item.minecraft.potion.effect.water",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 3
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:string
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个稀有的的垃圾：[",{translate:"item.minecraft.string",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 5
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:bowl
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个好一点点的垃圾：[",{translate:"item.minecraft.bowl",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 3
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:stick
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个稀有的的垃圾：[",{translate:"item.minecraft.stick",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 5
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:ink_sac
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个稀有的的垃圾：[",{translate:"item.minecraft.ink_sac",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 5
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:tripwire_hook
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个好一点点的垃圾：[",{translate:"block.minecraft.tripwire_hook",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 3
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:rotten_flesh
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个好一点点的垃圾：[",{translate:"item.minecraft.rotten_flesh",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 3
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:bamboo
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！但你得到了一个稀有的的垃圾：[",{translate:"block.minecraft.bamboo",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 6
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:name_tag
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！你钓到了宝藏：[",{translate:"item.minecraft.name_tag",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 15
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:saddle
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！你钓到了宝藏：[",{translate:"item.minecraft.saddle",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 15
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s bow
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！你钓到了宝藏：[",{translate:"item.minecraft.bow",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 15
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:book
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！你钓到了差一点点的宝藏：[",{translate:"item.minecraft.book",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 10
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s minecraft:enchanted_book
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！你钓到了宝藏：[",{translate:"item.minecraft.enchanted_book",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 15
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

execute store result score fishing.coin temp run clear @s nautilus_shell
execute if score fishing.coin temp matches 1.. run tellraw @s ["\u00a76上钩了！你钓到了宝藏：[",{translate:"item.minecraft.nautilus_shell",color:aqua},"\u00a76]"]
scoreboard players set fishing.coin.mutiplied temp 15
scoreboard players operation fishing.coin.mutiplied temp *= fishing.coin temp
scoreboard players operation fishing.coin.total temp += fishing.coin.mutiplied temp

title @s actionbar ["\u00a76+ ",{score:{name:"fishing.coin.total",objective:temp},color:gold},"\u00a76 金币 \u00a78| ","\u00a7e距离\u00a76游戏结束\u00a7e还有 ",{score:{name:"fishing.time",objective:"tick"},color:aqua},"\u00a7bs"]
tellraw @s ["\u00a76+ ",{score:{name:"fishing.coin.total",objective:temp},color:gold},"\u00a76 金币 \u00a78"]
function minecraft:fishing/give_coin_dfs
execute at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1 1