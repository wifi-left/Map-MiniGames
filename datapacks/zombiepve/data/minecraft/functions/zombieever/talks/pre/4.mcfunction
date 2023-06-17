tellraw @a[team=play.zombie] ["\u00a7a神様：\u00a7f对。当然，考虑到你（们）不可能空手作战，在你（们）\u00a7e出生点的二楼\u00a7f，会有物资补给。我先给你们100金币和装备。你们可以使用\u00a76金币 Coin\u00a7f兑换楼上的物品。"]
tellraw @a[team=play.zombie] ["\u00a76+100 Coins (神様的赐予)\n\u00a76+1 木剑 (神様的赐予)\n\u00a76+1 木斧 (神様的赐予)\n\u00a76+1 手枪 (神様的赐予)\n\u00a76+1 皮革装备 (神様的赐予)"]
give @a[team=play.zombie] wooden_sword{Unbreakable:1b}
give @a[team=play.zombie] wooden_axe{Unbreakable:1b}
give @a[team=play.zombie] minecraft:carrot_on_a_stick{gun:1,bullet:500,cdtime:10,display:{Name:'"\\u00a7a手枪"',Lore:['"\\u00a7b子弹数量：\\u00a7e500"','"\\u00a7bCD: \\u00a7e10tick"','"\\u00a7b伤害：\\u00a7e3.0 HP"']},CustomModelData:9}
item replace entity @a[team=play.zombie] armor.head with leather_helmet{Unbreakable:1b}
item replace entity @a[team=play.zombie] armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @a[team=play.zombie] armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @a[team=play.zombie] armor.feet with leather_boots{Unbreakable:1b}
schedule function minecraft:zombieever/talks/pre/5 6s append