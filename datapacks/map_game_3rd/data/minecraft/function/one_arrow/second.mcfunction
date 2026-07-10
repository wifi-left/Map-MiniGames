execute in overworld run spawnpoint @a[team=one_arrow] -71 -2 224 0 0
execute if score one_arrow.state state matches 2 run function minecraft:one_arrow/step/wait_start
execute if score one_arrow.state state matches 3 run function minecraft:one_arrow/testfor
execute if score one_arrow.state state matches 3 as @a[gamemode=adventure,team=one_arrow] run function minecraft:one_arrow/g_item

execute if score one_arrow.state state matches 3 run scoreboard players add one_arrow.time tick 1

scoreboard players operation one_arrow.temp temp = one_arrow.time tick
scoreboard players set 4 board 4
scoreboard players operation one_arrow.temp temp %= 4 board
execute if score one_arrow.state state matches 3 if score one_arrow.temp temp matches 0 positioned -79 40 200 run function minecraft:one_arrow/summon_tools
scoreboard players operation one_arrow.temp temp = one_arrow.time tick
scoreboard players set 15 board 15
scoreboard players operation one_arrow.temp temp %= 15 board
execute if score one_arrow.state state matches 3 if score one_arrow.temp temp matches 0 run function minecraft:one_arrow/random_event

execute if score one_arrow.state state matches 3 run title @a[team=one_arrow] actionbar ["\u00a7e游戏已进行 ",{score:{name:"one_arrow.time",objective:"tick"},color:aqua},"\u00a7bs","\u00a78 | \u00a7e存活玩家：",{score:{name:"one_arrow.player",objective:"tick"},color:red}]
# execute in airworld run fill -57 -63 652 -135 -62 574 air