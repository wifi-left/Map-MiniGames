tellraw @s ["\u00a7c你失败了。"]
title @s subtitle ["\u00a7c你失败了。"]
scoreboard players add @s dropper.level 0
execute if score @s dropper.level matches ..0 run function dropper/join
execute if score @s dropper.level matches 1..10 run function dropper/playlevel
execute if score @s dropper.level matches 11.. run function dropper/join
