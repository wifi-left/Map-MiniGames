execute unless score mutouren.state state matches 4 run return fail
execute store result score temp.x temp run data get entity @s Pos[0]
execute if score temp.x temp matches ..-2 run return fail
execute in parkourworld run function mutouren/died
title @s title ["\u00a7c你动了！"]
title @s subtitle ["你被遣返回起点"]