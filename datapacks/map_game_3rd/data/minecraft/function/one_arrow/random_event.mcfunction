execute store result score random temp run random value 1..10
title @a[team=one_arrow] title ["\u00a7d\u00a7l随机事件触发"]
execute if score random temp matches 1 run title @a[team=one_arrow] subtitle ["\u00a7f发光 3s"]
execute if score random temp matches 1 run effect give @a[team=one_arrow,gamemode=adventure] glowing 3 25 true

execute if score random temp matches 2 run title @a[team=one_arrow] subtitle ["\u00a7f中毒 5s"]
execute if score random temp matches 2 run effect give @a[team=one_arrow,gamemode=adventure] poison 5 10 true

execute if score random temp matches 3 run title @a[team=one_arrow] subtitle ["\u00a7f跳跃提升 3s"]
execute if score random temp matches 3 run effect give @a[team=one_arrow,gamemode=adventure] jump_boost 3 5 true

execute if score random temp matches 4 run title @a[team=one_arrow] subtitle ["\u00a7f速度 3s"]
execute if score random temp matches 4 run effect give @a[team=one_arrow,gamemode=adventure] speed 3 1 true

execute if score random temp matches 5 run title @a[team=one_arrow] subtitle ["\u00a7f无敌 3s"]
execute if score random temp matches 5 run effect give @a[team=one_arrow,gamemode=adventure] resistance 3 5 true

execute if score random temp matches 6 run title @a[team=one_arrow] subtitle ["\u00a7f强制隐身 5s (潜行失效)"]
execute if score random temp matches 6 run effect give @a[team=one_arrow,gamemode=adventure] invisibility 5 25 true

execute if score random temp matches 7..10 run title @a[team=one_arrow] subtitle ["\u00a7f无事件"]