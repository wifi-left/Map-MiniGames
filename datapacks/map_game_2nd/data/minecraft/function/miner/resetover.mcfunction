scoreboard players set miner.state state 2
scoreboard players set miner.time tick 6
tellraw @a[team=miner] ["\n \u00a72\u00a7l一掘到底\u00a76：当游戏开始的时候，你会获得挖掘工具。请使用你的工具，挖到最底下！\n"]
function minecraft:miner/map/start_random_point
tag @a remove miner.random_team
