tag @s add boat.sel
execute as @e[tag=boat] if score @s park.uuid = @a[tag=boat.sel,limit=1] park.uuid run tag @s add boat.tmp
# tag @e[tag=boat,limit=1,sort=nearest] add boat.tmp
effect give @e[tag=boat.tmp,limit=1] speed 5 3 true
effect give @s speed 5 3 true
execute unless score boat.type board matches 4 run execute unless entity @e[tag=boat.tmp,limit=1] run tag @s add boat.notspawn
execute unless score boat.type board matches 4 run execute unless entity @e[tag=boat.tmp,limit=1] run tellraw @s ["\u00a7c你尚未生成你的载具。"]
# execute if entity @e[tag=boat.tmp,limit=1] run tellraw @s ["\u00a7a已将你传送至你的载具。"]

# execute if score @s park.uuid = @e[tag=boat.tmp,limit=1] park.uuid run tag @s add boat.ok
# execute as @s[tag=!boat.ok] run tp @s ~ ~0.5 ~
# execute as @s[tag=!boat.ok] run tellraw @s ["\u00a7c这不是你的载具！这是",{"selector":"@e[tag=boat.tmp,limit=1]"},"\u00a7c，请乘坐你自己的载具。"]
tag @s remove boat.sel
tag @e remove boat.tmp
tag @s remove boat.ok