
tellraw @a[team=play.zombie] ["\u00a74蜜斯莱哈雅：\u00a7f虽然这么说有点冒昧，请勇者们击败魔王！"]
tellraw @a[team=play.zombie] ["\u00a76+100 Coins (来自蜜斯莱哈雅)\n\u00a76+1 木剑 (来自蜜斯莱哈雅)\n\u00a76+1 木斧 (来自蜜斯莱哈雅)\n\u00a76+1 手枪 (来自蜜斯莱哈雅)\n\u00a76+1 皮革装备 (来自蜜斯莱哈雅)"]

give @a[team=play.zombie] wooden_sword{Unbreakable:1b}
give @a[team=play.zombie] wooden_axe{Unbreakable:1b}
give @a[team=play.zombie] minecraft:carrot_on_a_stick{hp:2,gun:1,bullet:300,cdtime:10,display:{Name:'"\\u00a7a基础魔法棒"',Lore:['"\\u00a7b可使用次数：\\u00a7e300"','"\\u00a7bCD: \\u00a7e10tick"','"\\u00a7b伤害：\\u00a7e3.0 HP"','"\\u00a7b消耗能量：\\u00a7e2"']},CustomModelData:9}
item replace entity @a[team=play.zombie] armor.head with leather_helmet{Unbreakable:1b}
item replace entity @a[team=play.zombie] armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @a[team=play.zombie] armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @a[team=play.zombie] armor.feet with leather_boots{Unbreakable:1b}
schedule function minecraft:zombieever/talks/pre/5 6s append