tellraw @s ["\n\n\n\u00a76\u00a7l现在是你的回合。\n"]
function minecraft:merchant/player/action/backpoint
gamemode adventure @s
function minecraft:merchant/player/get_item
playsound entity.generic.explode player @s ~ ~ ~ 1 2 1
tag @s add merchant.turn.now