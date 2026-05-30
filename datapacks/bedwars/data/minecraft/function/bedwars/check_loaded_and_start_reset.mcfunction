execute if loaded -216 0 299 in overworld run return run function minecraft:bedwars/after_loaded_start_reset

title @a[tag=bw.player] title ["\u00a7eReseting..."]
title @a[tag=bw.player] subtitle ["\u00a7e等待区块加载中... Loading chunks..."]
forceload add -216 300 -393 121
schedule function minecraft:bedwars/check_loaded_and_start_reset 1s