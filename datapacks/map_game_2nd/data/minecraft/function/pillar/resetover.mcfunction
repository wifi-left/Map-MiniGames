scoreboard players set pillar.state state 2
scoreboard players set pillar.time tick 6
team modify pillar friendlyFire true
tellraw @a[team=pillar] ["\n \u00a7e\u00a7l幸运之柱\u00a76：当游戏开始的时候，你每 \u00a7c2s\u00a76 都会获得一个随机的物品。请使用你的物品，让其他的玩家出局！\n"]
recipe give @a[team=pillar] *
execute in airworld run function minecraft:pillar/map/start_random_point
