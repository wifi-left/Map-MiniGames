##
## Datapack Upgrader v1.0.0 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["\n\u00a7b收到任务 \u00a7a",{"color":"green","text":"[拯救村民]","hoverEvent": {"action": "show_text","contents": [{"text":"\u00a7f寻找村庄中魔物，并击败它们。\n\n\u00a77温馨提示：攻击由5波僵尸组成。"}]}},"\u00a7a\n"]
scoreboard players set zombie.round board 5
function zombieever/rounds/5
scoreboard players set zombie.state state 1
# At least 16

data merge entity @e[tag=pve.title,limit=1] {CustomName:'"\\u00a7d拯救村庄"'}
execute if score tmp board matches 18.. run playsound entity.player.levelup player @s ~ ~ ~ 2 0 1

