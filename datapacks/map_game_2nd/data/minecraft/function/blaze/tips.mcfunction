tellraw @s ["\n\u00a7c\u00a7l    烽火燎原"]

execute if score blaze.mode board matches 1 run tellraw @s ["\n\u00a76    模式：\u00a7b[占点模式]\n\n",{text:"    占据据点、守卫据点，",color:white},{text:"得分最高者胜利。",color:white}]
execute if score blaze.mode board matches 2 run tellraw @s ["\n\u00a76    模式：\u00a7d[团战模式]\n\n",{text:"    两个队伍之间PVP，",color:white},{text:"当另一个队伍全部淘汰，或者时间截止后，存活最多的队伍得分。得分最先到达 3 者胜利。",color:white}]
execute if score blaze.mode board matches 3 run tellraw @s ["\n\u00a76    模式：\u00a7c[警匪模式]\n\n",{text:"    队伍\u00a79[警]\u00a7f保护据点（据点在正中心），直到时间点截至。",color:white},{text:"\n    队伍\u00a7c[匪]\u00a7f攻占据点（据点在正中心）。",color:white},{text:"成功完成目标得分。",color:white},{text:"\n    一段时间后会交换队伍，对换两个队伍身份。\n    互相交换算一局游戏，一共有 3 局游戏。",color:white}]
tellraw @s [""]
