execute unless score total.start_game_mode board matches 1.. run scoreboard players operation blaze.mode board = blaze.mode state
scoreboard players set blaze.state state 1
function minecraft:blaze/start_reset
title @a[team=blaze.wait] title ["\u00a7c\u00a7l烽火燎原"]
title @a[team=blaze.wait] subtitle ["准备中..."]
scoreboard players set blaze.time board -1
spawnpoint @a[team=blaze.wait] 61 76 369 0 0