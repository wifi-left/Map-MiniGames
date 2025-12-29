scoreboard players remove mutouren.next_freeze tick 1
execute if score mutouren.next_freeze tick matches 0 run return run function minecraft:mutouren/step/timeout/unfreeze
title @a[team=mutouren,gamemode=spectator] actionbar ["\u00a7a距离\u00a7b冷冻结束\u00a7a还有 ",{score:{name:"mutouren.next_freeze",objective:"tick"},color:aqua},"\u00a7bs"]
title @a[team=mutouren,gamemode=adventure] actionbar ["\u00a7c冷冻中，请不要动！"]
execute as @a[team=mutouren] at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 2 1