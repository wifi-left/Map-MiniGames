tellraw @a[team=build_parkour] [{selector:"@a[gamemode=adventure,team=build_parkour]"},{text:" \u00a7c未能按时完成跑酷。",color:red}]
scoreboard players set build_parkour.any_success board -1
function minecraft:build_parkour/round_over