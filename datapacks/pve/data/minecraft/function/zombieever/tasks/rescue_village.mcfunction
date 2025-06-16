##
## Datapack Upgrader v1.0.2 by wifi_left
## If you encounter a problem, make an issue on https://github.com/wifi-left/Datapack-Upgrader
## 
tellraw @a[team=play.zombie] ["\n§b收到任务 §a",{"color":"green","text":"[拯救村民]","hover_event":{"action":"show_text","value":[{"text":"§f寻找村庄中魔物，并击败它们。\n\n§7温馨提示：攻击由5波僵尸组成。"}]}},"§a\n"]
scoreboard players set zombie.round board 5
function zombieever/rounds/5
scoreboard players set zombie.state state 1
# At least 16

## WARNING: The transformation may cause problem. You might need to modify it by yourself.
data merge entity @e[tag=pve.title,limit=1] {CustomName:"\u00a7d拯救村庄"}
execute if score tmp board matches 18.. run playsound entity.player.levelup player @s ~ ~ ~ 2 0 1


