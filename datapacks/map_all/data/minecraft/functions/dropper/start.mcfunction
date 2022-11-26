playsound ui.button.click player @s ~ ~ ~ 1 1 1
function dropper/load
# scoreboard players add @s dropper.level 0
scoreboard players set @s[scores={dropper.level=..1}] dropper.failed 0
scoreboard players set @s[scores={dropper.level=..1}] dropper.level 1
function dropper/playlevel
title @s subtitle ["\u00a7a进入传送门进入下一关"]