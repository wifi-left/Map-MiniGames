# return 0
# 暂时禁用
execute if score stronghold.state state matches 1..5 unless entity @a[team=stronghold,tag=stronghold.alive] run function minecraft:stronghold/over/failed