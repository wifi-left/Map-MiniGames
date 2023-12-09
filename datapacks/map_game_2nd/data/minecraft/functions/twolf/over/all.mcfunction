scoreboard players set wolf.event board 14
scoreboard players set wolf.time board 6
scoreboard players set wolf.ttime board -1
scoreboard players set twolf.state state 3
schedule clear #wolffunctions
execute unless score wolf.time board matches 1.. run bossbar set minecraft:wolfkiller name ["\u00a76狼人杀 \u00a78| \u00a7a等待游戏开始"]
