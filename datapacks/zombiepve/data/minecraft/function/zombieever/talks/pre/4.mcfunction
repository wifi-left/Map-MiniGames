##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 

tellraw @a[team=play.zombie] ["\u00a74蜜斯莱哈雅：\u00a7f虽然这么说有点冒昧，请勇者们击败魔王！"]
tellraw @a[team=play.zombie] ["\u00a76+100 Coins (来自蜜斯莱哈雅)\n\u00a76+1 木剑 (来自蜜斯莱哈雅)\n\u00a76+1 木斧 (来自蜜斯莱哈雅)\n\u00a76+1 手枪 (来自蜜斯莱哈雅)\n\u00a76+1 皮革装备 (来自蜜斯莱哈雅)"]

give @a[team=play.zombie] wooden_sword[unbreakable={}]
give @a[team=play.zombie] wooden_axe[unbreakable={}]
give @a[team=play.zombie] minecraft:carrot_on_a_stick[custom_data={hp:2,gun:1,bullet:300,cdtime:10},custom_name='"\\u00a7a基础魔法棒"',lore=['"\\u00a7b可使用次数：\\u00a7e300"','"\\u00a7bCD: \\u00a7e10tick"','"\\u00a7b伤害：\\u00a7e3.0 HP"','"\\u00a7b消耗能量：\\u00a7e2"'],custom_model_data=9]
item replace entity @a[team=play.zombie] armor.head with leather_helmet[unbreakable={}]
item replace entity @a[team=play.zombie] armor.chest with leather_chestplate[unbreakable={}]
item replace entity @a[team=play.zombie] armor.legs with leather_leggings[unbreakable={}]
item replace entity @a[team=play.zombie] armor.feet with leather_boots[unbreakable={}]
schedule function minecraft:zombieever/talks/pre/5 6s append
