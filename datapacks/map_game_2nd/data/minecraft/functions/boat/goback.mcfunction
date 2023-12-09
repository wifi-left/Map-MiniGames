tag @s add boat.sel
execute as @e[tag=boat] if score @s park.uuid = @a[tag=boat.sel,limit=1] park.uuid run tag @s add boat.tmp
tp @s @e[tag=boat.tmp,limit=1]
ride @s dismount
ride @s mount @e[tag=boat.tmp,limit=1]
execute unless entity @e[tag=boat.tmp,limit=1] run tellraw @s ["\u00a7c请不要尝试卡 BUG，破坏游戏体验并不是一个很好的选择。"]
execute unless entity @e[tag=boat.tmp,limit=1] run tellraw @s ["\u00a7c你尚未生成你的载具。"]
execute if entity @e[tag=boat.tmp,limit=1] run tellraw @s ["\u00a7a已将你传送至你的载具。"]
# tag @e[tag=boat,limit=1,sort=nearest] add boat.tmp
# execute if score @s park.uuid = @e[tag=boat.tmp,limit=1] park.uuid run tag @s add boat.ok
# execute as @s[tag=!boat.ok] run tp @s ~ ~0.5 ~
# execute as @s[tag=!boat.ok] run tellraw @s ["\u00a7c这不是你的载具！这是",{"selector":"@e[tag=boat.tmp,limit=1]"},"\u00a7c，请乘坐你自己的载具。"]
tag @s remove boat.sel
tag @e remove boat.tmp
tag @s remove boat.ok