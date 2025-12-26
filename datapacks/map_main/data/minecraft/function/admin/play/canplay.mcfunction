# execute if score gametotal state matches 1..1000 if score total.game_mode state matches 1 run tellraw @s ["\u00a7c当前小游戏派对已开始。为避免BUG，您无法开始游戏。"]
# execute if score gametotal state matches 1..1000 if score total.game_mode state matches 1 run return 0

execute as @s[tag=map.op] run return 1
execute unless entity @s run return 1
execute as @s[tag=play.total] run return 1
execute if score map.playmode board matches 0 run return 1
execute unless entity @a[tag=map.op] if score map.playmode.offline board matches 1 run return 1
return 0
