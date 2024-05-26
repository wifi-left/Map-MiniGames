##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
gamemode spectator @s
tellraw @s ["\u00a7c很抱歉，游戏已经开始！您将在下局游戏加入！"]
tp @s 630 40 -78 90 0
scoreboard players set @s zombie.coin 100
tellraw @s ["\u00a76+300 Coins (加入游戏)"]
team join play.zombie
give @s wooden_sword[unbreakable={}]
give @s wooden_axe[unbreakable={}]
item replace entity @s armor.head with leather_helmet[unbreakable={}]
item replace entity @s armor.chest with leather_chestplate[unbreakable={}]
item replace entity @s armor.legs with leather_leggings[unbreakable={}]
item replace entity @s armor.feet with leather_boots[unbreakable={}]
give @s minecraft:carrot_on_a_stick[custom_data={hp:2,gun:1,bullet:300,cdtime:10},custom_name='"\\u00a7a基础魔法棒"',lore=['"\\u00a7b可使用次数：\\u00a7e300"','"\\u00a7bCD: \\u00a7e10tick"','"\\u00a7b伤害：\\u00a7e3.0 HP"','"\\u00a7b消耗能量：\\u00a7e2"'],custom_model_data=9]
scoreboard players operation @a[team=play.zombie] globle.game = zombie globle.game
xp set @s 0 levels
xp set @s 0 points

execute if score zombie.mode board matches 1 unless entity @s[tag=GOABLE.SPEC] run function zombieever/fuhuo