scoreboard players set blaze.state state 1
title @a[team=blaze.wait] title ["\u00a7c\u00a7l烽火燎原"]
title @a[team=blaze.wait] subtitle ["\u00a7e分配队伍中"]
execute as @a[team=blaze.wait] run function minecraft:blaze/tips
function minecraft:blaze/before/random_team
function minecraft:blaze/during/tag_blaze_players
title @a[tag=blaze.player] title ["\u00a7c\u00a7l烽火燎原"]
title @a[tag=blaze.player] subtitle ["\u00a7e游戏将在\u00a7c15s\u00a7e后开始"]
scoreboard players set blaze.time board 16