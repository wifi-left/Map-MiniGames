execute as @s[team=play.zombie] run function zombieever/guntest
execute as @s[team=play.zombie,tag=success] run function gun/guns2
execute unless entity @s[tag=success] run title @s actionbar ["\u00a7c没有足够的能量值"]
execute unless entity @s[tag=success] run playsound block.chest.locked player @s ~ ~ ~ 2 2 1
tag @s remove success
# execute as @s[team=] run function zombieever/
