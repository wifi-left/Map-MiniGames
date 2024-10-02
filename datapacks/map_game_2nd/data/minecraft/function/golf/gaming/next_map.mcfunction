execute if score golf.allmap state matches 1 run scoreboard players add golf.map board 1
tag @a[team=golf,gamemode=!creative,tag=!GOABLE.SPEC] add golf.waittoplay
function minecraft:golf/gaming/map_reset
tellraw @a[team=golf] ["\u00a76地图已切换，请浏览地图，将在5s后开始第一位玩家的操作。\n\u00a7a目标：让Ball进洞（粗金块+铜块）"]
scoreboard players set golf.state state 1
gamemode spectator @a[team=golf,gamemode=!creative]
execute in golfworld run tp @a[team=golf,gamemode=spectator] -59 -30 60 0 90
schedule function minecraft:golf/gaming/nextplayer 5s