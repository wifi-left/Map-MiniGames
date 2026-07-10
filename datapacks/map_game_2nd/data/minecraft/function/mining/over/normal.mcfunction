title @a[team=mining] title ["\u00a7c游戏结束"]
title @a[team=mining] subtitle ["\u00a7f所有人都完成了挖掘"]
function minecraft:mining/over/timeout
tag @a[tag=mining.win] add mining.first
tag @a[tag=mining.win] remove mining.tobecalc
tag @a[tag=mining.win] remove mining.win

function minecraft:mining/over/timeout
tag @a[tag=mining.win] add mining.second
tag @a[tag=mining.win] remove mining.tobecalc
tag @a[tag=mining.win] remove mining.win

function minecraft:mining/over/timeout
tag @a[tag=mining.win] add mining.third
tag @a[tag=mining.win] remove mining.tobecalc
tag @a[tag=mining.win] remove mining.win

team leave @a[tag=mining.first]
team leave @a[tag=mining.second]
team leave @a[tag=mining.third]


tag @a[tag=mining.third] remove mining.third
tag @a[tag=mining.second] remove mining.second
tag @a[tag=mining.first] remove mining.first